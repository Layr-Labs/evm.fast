import InitECandidate.Solver.MemSafe.Trie.NoAbn
import InitECandidate.Solver.MemSafe.Trie.Begin

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `_node_rlp_finish`: the second pass as `HoareG` (exception-inclusive)

The cost layer proves `finishSpec` for returns only (`Hoare`). Here the same second-pass steps are stated for
all good results: the state predicate `S2` (cost layer) is kept, with the static bound `off + ex ≤ TOT`
(`BUF + TOT ≤ p1.hp`): the encoding written so far lies in the allocated block, so at any exit
(`Ex`) every changed cell is a cache cell, a keccak cell or a cell of `[p.hp, p'.hp)`.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

/-- The cells the finish may write, with the heap pointer `hp` reached. -/
def WMax (s0 : State σ) (p : Ptrs) (ND : BitVec 64) (hp : Nat) (a : BitVec 64) : Prop :=
  (p.hp ≤ a.toNat ∧ a.toNat < hp) ∨ CacheW s0.memory ND a ∨ KBuf s0 a

theorem wMax_mono {s0 : State σ} {p : Ptrs} {ND : BitVec 64} :
    ∀ h h' a, h ≤ h' → WMax s0 p ND h a → WMax s0 p ND h' a := by
  intro h h' a hh hw
  rcases hw with ⟨h1, h2⟩ | hw
  · exact Or.inl ⟨h1, by omega⟩
  · exact Or.inr hw

/-- The exit post of the finish: allocator facts and the footprint. -/
def FEx (s0 : State σ) (p : Ptrs) (ND : BitVec 64) (t : State σ) : Prop :=
  AFr p s0 (WMax s0 p ND) t

/-- The post of a second-pass statement: normal ends in `S`, abnormal ends are exits. -/
def PG (S : State σ → Prop) (E : State σ → Prop) (r : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  (r = none → S t) ∧ ∀ r', r = some r' → Abn r' ∧ E t

theorem pG_res {S E : State σ → Prop} {x : MlS} {o : Option (ValueHOL 64)}
    (hS : ∀ t : State σ, S t → S { t with locals := t.locals.resVarEq (x, o) })
    (hE : ∀ t : State σ, E t → E { t with locals := t.locals.resVarEq (x, o) })
    {r : Option (PanSemResultExact 64)} {t : State σ} (h : PG S E r t) :
    PG S E r { t with locals := t.locals.resVarEq (x, o) } :=
  ⟨fun hr => hS _ (h.1 hr), fun r' hr' => ⟨(h.2 r' hr').1, hE _ (h.2 r' hr').2⟩⟩

/-- A second-pass state with the exit facts, for `Wx` inside the finish's cells. -/
theorem ex_of_s2 {s0 : State σ} {p p1 : Ptrs} {ND FR K PL CB CL HL BUF : BitVec 64}
    {Wx : BitVec 64 → Prop} {off ex TOT : Nat} {t : State σ}
    (h : S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wx off ex t) (hle : off + ex ≤ TOT)
    (hTOT : BUF.toNat + TOT ≤ p1.hp) (hp1 : p.hp ≤ p1.hp)
    (hW : ∀ x, Wx x → CacheW s0.memory ND x ∨ KBuf s0 x) : FEx s0 p ND t := by
  obtain ⟨hgl, p', hp', ho', hle', hw⟩ := h.af
  refine ⟨hgl, p', hp', ho', le_trans hp1 hle', fun a ha => ?_⟩
  rcases hw a ha with ⟨h1, h2 | h2⟩ | h2
  · exact Or.inl ⟨h1, by
      have := h.bnd
      omega⟩
  · exact Or.inl ⟨h1, by omega⟩
  · exact Or.inr (hW a h2)

theorem fEx_locals {s0 : State σ} {p : Ptrs} {ND : BitVec 64} {t : State σ} (L : Locals)
    (h : FEx s0 p ND t) : FEx s0 p ND { t with locals := L } := h

/-! ## `off = off + w` -/

theorem gstep_off {s0 : State σ} {p1 : Ptrs} {base : Nat} {FR ND K PL CB CL HL BUF : BitVec 64}
    {Wx : BitVec 64 → Prop} {off e : Nat} {wn : MlS} {Lx : Locals → Prop}
    (hLx : ∀ m v, Lx m → Lx (m.update (nm "off", v))) :
    HoareG σ X (fun t => S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off e t ∧
        t.locals.lookup wn = some (.val (.word (BitVec.ofNat 64 e))) ∧ Lx t.locals)
      (.assign .local (nm "off") (.op .add [lv (nm "off"), lv wn]))
      (fun r t => r = none ∧ S2 s0 p1 base FR ND K PL CB CL HL BUF Wx (off + e) 0 t ∧
        Lx t.locals) := by
  refine hoareG_assign fun t _ ⟨h, hw, hL⟩ v hv _ => ?_
  rw [ev_add2 (ev_lw h.offv) (ev_lw hw), BitVec.ofNat_add_ofNat] at hv
  cases hv
  refine ⟨rfl, ⟨fL_upd h.fl fLN_off _, by rw [lk_set_ne _ _ (by decide)]; exact h.hlv,
    by rw [lk_set_ne _ _ (by decide)]; exact h.bufv, lk_set_self _ _ _, by have := h.bnd; omega,
    aFr_mono h.af (wF_le (by omega) fun _ h => h), h.be⟩, hLx _ _ hL⟩

/-! ## The writer calls -/

/-- `var wn = rlp_encode_bytes(buf + off, src, n); c` (exception-free callee). -/
theorem gcall_enc (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hesc : CalleeEscFree σ X (nm "rlp_encode_bytes"))
    {s0 : State σ} {p1 : Ptrs} {base : Nat} {FR ND K PL CB CL HL BUF : BitVec 64}
    {Wx : BitVec 64 → Prop} {off : Nat} (hbuf : base ≤ BUF.toNat) (hb8 : base % 8 = 0)
    {wn : MlS} (hwn : S2N wn) {Sx Nx : ExpHOL 64} {SV NV : BitVec 64} {E : Nat}
    {Lx : Locals → Prop}
    {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hLx : ∀ m v, Lx m → Lx (m.update (wn, v)))
    (hS : ∀ t, S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off 0 t → Lx t.locals → ∀ v,
      ev t Sx = some v → v = .val (.word SV))
    (hN : ∀ t, S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off 0 t → Lx t.locals → ∀ v,
      ev t Nx = some v → v = .val (.word NV))
    (hE : ∀ t, S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off 0 t → Lx t.locals →
      encLenN (ld8W t SV) NV = E)
    (hQ : ∀ r (t : State σ) o, Q r t → Q r { t with locals := t.locals.resVarEq (wn, o) })
    (hc : ∀ t, S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off E t → Lx t.locals →
      t.locals.lookup wn = some (.val (.word (BitVec.ofNat 64 E))) →
      HoareG σ X (fun u => u = t) c Q) :
    HoareG σ X (fun t => S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off 0 t ∧ Lx t.locals)
      (.decCall wn .one (nm "rlp_encode_bytes") [bufOff, Sx, Nx] c) Q := by
  refine hoareG_decCallS ((footD_rlp_encode_bytes hC hA hT).and (Spec.Inv.funSpec_be _)) hesc
    fun t _ ⟨h, hL⟩ vs hvs callee v st ⟨hR, hbe⟩ _ _ => ?_
  obtain ⟨u1, us1, rfl, e1, hus1⟩ := evs_cons_inv hvs
  obtain ⟨u2, u3, rfl, e2, e3⟩ := evs_two_inv hus1
  rw [ev_bufOff h] at e1
  cases e1
  obtain rfl := hS t h hL u2 e2
  obtain rfl := hN t h hL u3 e3
  obtain ⟨hg, hm, hret⟩ := hR (by simp [Good]) _ _ _ rfl
  have hfb : encLenN (ld8W (callEntryStateHOLFinite t callee) SV) NV = E := hE t h hL
  rw [hfb] at hm hret
  obtain ⟨rfl, hD⟩ := hret v rfl
  have hb := h.bnd
  have hDn := bufOff_toNat (BUF := BUF) (off := off) (by omega)
  rw [hDn] at hD hm
  set e := E
  have hst : S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off e
      (setVarHOLFinite wn (.val (.word (BitVec.ofNat 64 e))) { st with locals := t.locals }) := by
    have h' : S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off e { st with locals := t.locals } := by
      refine ⟨h.fl, h.hlv, h.bufv, h.offv, by omega, ?_, hbe.trans h.be⟩
      refine aFr_mem (aFr_mono h.af (wF_le (by omega) fun _ h => h)) hg fun a ha hp _ => ?_
      have := ovl_ge hb8 (by omega) (mod_ne hm ha)
      exact Or.inl ⟨this.1, Or.inr (by omega)⟩
    exact s2_upd h' hwn _
  exact hoareG_conseq (hc _ hst (hLx _ _ hL) (lk_set_self _ _ _)) (fun _ _ h => h)
    fun r t' _ _ h => hQ r t' _ h

theorem fEx_clean {s0 : State σ} {p : Ptrs} {ND : BitVec 64} {t u : State σ} (h : FEx s0 p ND t)
    (hc : Clean t u) : FEx s0 p ND u := by
  obtain ⟨hgl, p', hp', ho', hle', hw⟩ := h
  refine ⟨fun g hg => (by rw [hc.2]; exact hgl g hg), p', ?_, ho', hle', fun a ha => ?_⟩
  · unfold ptrsOf gword at hp' ⊢; rw [hc.2]; exact hp'
  · by_cases e : u.memory a = t.memory a
    · exact hw a (by rw [← e]; exact ha)
    · exact absurd (by rw [hc.1]) e

/-- `var wn = node_write_ref(c, buf + off); k`, exception-inclusive. -/
theorem gcall_ref (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX : DomBounded X)
    {s0 : State σ} {p p1 : Ptrs} {FR ND K PL CB CL HL BUF ks kp : BitVec 64} (hK : KOK s0 ks kp)
    {Wx Wx2 : BitVec 64 → Prop} {off TOT : Nat} (hbuf : p.hp ≤ BUF.toNat) (hb8 : p.hp % 8 = 0)
    (hbp : p.hp ≤ p1.hp) (hoff : off ≤ TOT) (hTOT : BUF.toNat + TOT ≤ p1.hp)
    (hWx : ∀ x, Wx x → CacheW s0.memory ND x ∨ KBuf s0 x)
    (hWx2 : ∀ x, Wx2 x → CacheW s0.memory ND x ∨ KBuf s0 x)
    {wn : MlS} (hwn : S2N wn) {Cx : ExpHOL 64} {Cv RLs : BitVec 64}
    {Lx : Locals → Prop} {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hLx : ∀ m v, Lx m → Lx (m.update (wn, v)))
    (hCv : ∀ t, S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wx off 0 t → Lx t.locals → ∀ v,
      ev t Cx = some v → v = .val (.word Cv))
    (hRL : ∀ t, S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wx off 0 t → Lx t.locals →
      (Cv = 0 ∨ heapBase ≤ Cv.toNat) → RL t.memory Cv = RLs)
    (hW1 : ∀ a, Wx a → Wx2 a) (hW2 : ∀ a, KIn ks kp a → Wx2 a)
    (hW3 : heapBase ≤ Cv.toNat → Wx2 (Cv + 24))
    (hQ : ∀ r (t : State σ) o, Q r t → Q r { t with locals := t.locals.resVarEq (wn, o) })
    (hQabn : ∀ r (u : State σ), FEx s0 p ND u → Abn r → Q (some r) u)
    (hc : ∀ t, S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wx2 off RLs.toNat t → Lx t.locals →
      t.locals.lookup wn = some (.val (.word RLs)) →
      HoareG σ X (fun u => u = t) c Q) :
    HoareG σ X (fun t => S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wx off 0 t ∧ Lx t.locals)
      (.decCall wn .one (nm "node_write_ref") [Cx, bufOff] c) Q := by
  refine hoareG_decCall ((spec_nwr hC hA hT hNS hX).and (Spec.Inv.funSpec_be _)) ?_ ?_
  · intro t _ ⟨h, hL⟩ vs hvs callee v st ⟨hR, hbe⟩ _ hsh
    obtain ⟨u1, u2, rfl, e1, e2⟩ := evs_two_inv hvs
    obtain rfl := hCv t h hL u1 e1
    rw [ev_bufOff h] at e2
    cases e2
    obtain ⟨hgl, q, hq, hoq, hpq, -⟩ := h.af
    have hpt : ptrsOf (callEntryStateHOLFinite t callee) = some q := hq
    have hK2 : KOK (callEntryStateHOLFinite t callee) ks kp := kOK_of hK hgl
    obtain ⟨hr1, -⟩ := hR (by simp [Good]) Cv _ ks kp q rfl hpt hoq hK2
    obtain ⟨rfl, hCz, hnw, hF⟩ := hr1 v rfl
    have hRL' : RL (callEntryStateHOLFinite t callee).memory Cv = RLs := hRL t h hL hCz
    rw [hRL'] at hnw hF ⊢
    have hb := h.bnd
    have hDn := bufOff_toNat (BUF := BUF) (off := off) (by omega)
    rw [hDn] at hnw
    have hst : S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wx2 off RLs.toNat
        (setVarHOLFinite wn (.val (.word RLs)) { st with locals := t.locals }) := by
      have h' : S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wx2 off RLs.toNat
          { st with locals := t.locals } := by
        refine ⟨h.fl, h.hlv, h.bufv, h.offv, by rcases hnw with h' | h' <;> omega, ?_,
          hbe.trans h.be⟩
        refine aFr_call wF_mono (aFr_mono h.af (wF_le (by omega) hW1)) hq hF fun hp a hqh hw => ?_
        rcases hw with hw | ⟨rfl, hcb⟩ | hw | ⟨h1, h2⟩
        · rw [hDn] at hw
          have := ovl_ge hb8 (by omega) hw
          exact Or.inl ⟨this.1, Or.inr (by omega)⟩
        · exact Or.inr (hW3 hcb)
        · exact Or.inr (hW2 a hw)
        · exact Or.inl ⟨by omega, Or.inl h2⟩
      exact s2_upd h' hwn _
    exact hoareG_conseq (hc _ hst (hLx _ _ hL) (lk_set_self _ _ _)) (fun _ _ h => h)
      fun r t' _ _ h => hQ r t' _ h
  · intro t _ ⟨h, hL⟩ vs hvs callee r st ⟨hR, hbe⟩ _ habn
    obtain ⟨u1, u2, rfl, e1, e2⟩ := evs_two_inv hvs
    obtain rfl := hCv t h hL u1 e1
    rw [ev_bufOff h] at e2
    cases e2
    obtain ⟨hgl, q, hq, hoq, hpq, -⟩ := h.af
    have hpt : ptrsOf (callEntryStateHOLFinite t callee) = some q := hq
    have hK2 : KOK (callEntryStateHOLFinite t callee) ks kp := kOK_of hK hgl
    obtain ⟨-, hcl⟩ := hR (abn_good habn) _ _ ks kp q rfl hpt hoq hK2
    have hcl' := hcl habn
    have hex := ex_of_s2 h (by omega) hTOT hbp hWx
    exact hQabn _ _ (fEx_clean hex hcl') habn

end InitECandidate.Solver.MemSafe.Trie
