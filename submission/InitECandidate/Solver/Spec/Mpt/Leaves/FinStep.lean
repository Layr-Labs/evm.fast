import InitECandidate.Solver.Spec.Mpt.Leaves.FinFirst

/-!
# `_node_rlp_finish`: the second-pass state and its writer steps

After `buf = alloc(hl + payload)` the second pass writes the encoding at `buf + off`. Its state
`S2 … off ex t` carries the finish locals, `hl`, `buf`, `off = off` (a ghost `Nat` offset),
`buf + off + ex < 2^63` and the frame `AFr p1 s0 (WF base (buf + off + ex) Wx) t`: every cell
changed since the entry is fresh (`base ≤ a` below the heap pointer or below `buf + off + ex`) or
in `Wx` (the hash cells of the children and the keccak buffers, once `node_write_ref` ran).
`ex` is the length of a writer that returned before `off += w` (`step_off`).

* `call_enc`: `var w = rlp_encode_bytes(buf + off, src, n); k` (exact length `encLenN fb n`);
* `call_ref`: `var w = node_write_ref(c, buf + off); k` (length `RL`, hash cell, keccak, fresh);
* `step_off`: `off = off + w`.

Every writer returns a length `e` with `buf + off + e < 2^63`, so the ghost offset never wraps.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (State)
open InitECandidate.Solver.MemSafe.Helpers (BWPost AlignedDom Locals)

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd Overlap ModifiesOnly gword gHeap)

/-! ## The write set -/

/-- Fresh cells from `base`, below the heap pointer `hp` or below `B`, and the cells of `Wx`. -/
def WF (base B : Nat) (Wx : BitVec 64 → Prop) (hp : Nat) (a : BitVec 64) : Prop :=
  (base ≤ a.toNat ∧ (a.toNat < hp ∨ a.toNat < B)) ∨ Wx a

theorem wF_mono {base B : Nat} {Wx : BitVec 64 → Prop} :
    ∀ h h' a, h ≤ h' → WF base B Wx h a → WF base B Wx h' a := by
  intro h h' a hh hw
  rcases hw with ⟨h1, h2 | h2⟩ | hw
  · exact Or.inl ⟨h1, Or.inl (by omega)⟩
  · exact Or.inl ⟨h1, Or.inr h2⟩
  · exact Or.inr hw

theorem wF_le {base B B' : Nat} {Wx Wx' : BitVec 64 → Prop} (hB : B ≤ B') (hW : ∀ a, Wx a → Wx' a) :
    ∀ h a, WF base B Wx h a → WF base B' Wx' h a := by
  intro h a hw
  rcases hw with ⟨h1, h2 | h2⟩ | hw
  · exact Or.inl ⟨h1, Or.inl h2⟩
  · exact Or.inl ⟨h1, Or.inr (by omega)⟩
  · exact Or.inr (hW a hw)

theorem aFr_mono {p : Ptrs} {s0 t : State σ} {W W' : Nat → BitVec 64 → Prop} (h : AFr p s0 W t)
    (hW : ∀ h a, W h a → W' h a) : AFr p s0 W' t := by
  obtain ⟨hg, p', hp', ho, hle, hw⟩ := h
  exact ⟨hg, p', hp', ho, hle, fun a ha => hW _ a (hw a ha)⟩

/-- A cell of `Overlap D n` with `base ≤ D`, `base` 8-aligned, is at or above `base`. -/
theorem ovl_ge {base d n : Nat} {a : BitVec 64} (h8 : base % 8 = 0)
    (hD : base ≤ d) (h : Overlap d n a) : base ≤ a.toNat ∧ a.toNat < d + n := by
  unfold Overlap at h; omega

/-! ## The second-pass state -/

structure S2 (s0 : State σ) (p1 : Ptrs) (base : Nat) (FR ND K PL CB CL HL BUF : BitVec 64)
    (Wx : BitVec 64 → Prop) (off ex : Nat) (t : State σ) : Prop where
  fl : FL FR ND K PL CB CL t.locals
  hlv : t.locals.lookup (nm "hl") = some (.val (.word HL))
  bufv : t.locals.lookup (nm "buf") = some (.val (.word BUF))
  offv : t.locals.lookup (nm "off") = some (.val (.word (BitVec.ofNat 64 off)))
  bnd : BUF.toNat + off + ex < 2 ^ 63
  af : AFr p1 s0 (WF base (BUF.toNat + off + ex) Wx) t
  be : t.be = s0.be

/-- The names `S2` tracks. -/
def S2N (x : MlS) : Prop := FLN x ∧ x ≠ nm "hl" ∧ x ≠ nm "buf" ∧ x ≠ nm "off"

theorem s2N_w : S2N (nm "w") := by unfold S2N FLN; decide
theorem s2N_w2 : S2N (nm "w2") := by unfold S2N FLN; decide
theorem s2N_w3 : S2N (nm "w3") := by unfold S2N FLN; decide
theorem s2N_w4 : S2N (nm "w4") := by unfold S2N FLN; decide
theorem s2N_w5 : S2N (nm "w5") := by unfold S2N FLN; decide
theorem s2N_j : S2N (nm "j") := by unfold S2N FLN; decide

section s2
variable {s0 : State σ} {p1 : Ptrs} {base : Nat} {FR ND K PL CB CL HL BUF : BitVec 64}
  {Wx : BitVec 64 → Prop} {off ex : Nat}

theorem s2_upd {t : State σ} (h : S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off ex t) {x : MlS}
    (hx : S2N x) (v : ValueHOL 64) :
    S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off ex (setVarHOLFinite x v t) := by
  obtain ⟨hf, h1, h2, h3⟩ := hx
  exact ⟨fL_upd h.fl hf v, by rw [lk_set_ne _ _ h1]; exact h.hlv,
    by rw [lk_set_ne _ _ h2]; exact h.bufv, by rw [lk_set_ne _ _ h3]; exact h.offv,
    h.bnd, h.af, h.be⟩

theorem s2_res {t : State σ} (h : S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off ex t) {x : MlS}
    (hx : S2N x) (o : Option (ValueHOL 64)) :
    S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off ex { t with locals := t.locals.resVarEq (x, o) } := by
  obtain ⟨hf, h1, h2, h3⟩ := hx
  exact ⟨fL_res h.fl hf o, by rw [lookup_resVarEq_ne _ _ h1]; exact h.hlv,
    by rw [lookup_resVarEq_ne _ _ h2]; exact h.bufv, by rw [lookup_resVarEq_ne _ _ h3]; exact h.offv,
    h.bnd, h.af, h.be⟩

theorem s2_wx {t : State σ} (h : S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off ex t)
    {Wx' : BitVec 64 → Prop} (hW : ∀ a, Wx a → Wx' a) :
    S2 s0 p1 base FR ND K PL CB CL HL BUF Wx' off ex t :=
  ⟨h.fl, h.hlv, h.bufv, h.offv, h.bnd, aFr_mono h.af (wF_le le_rfl hW), h.be⟩

theorem s2_clock {t : State σ} (h : S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off ex t) :
    S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off ex (decClockHOLFinite t) :=
  ⟨h.fl, h.hlv, h.bufv, h.offv, h.bnd, h.af, h.be⟩

/-- A cell below `base` outside `Wx` still holds its entry value. -/
theorem s2_read {t : State σ} (h : S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off ex t)
    {x : BitVec 64} (hx : x.toNat < base) (hW : ¬ Wx x) : t.memory x = s0.memory x := by
  obtain ⟨-, p', -, -, -, hw⟩ := h.af
  by_contra hne
  rcases hw x hne with ⟨h1, -⟩ | h2
  · omega
  · exact hW h2

theorem ev_bufOff {t : State σ} (h : S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off ex t) :
    ev t bufOff = some (.val (.word (BUF + BitVec.ofNat 64 off))) :=
  ev_add2 (ev_lw h.bufv) (ev_lw h.offv)

theorem bufOff_toNat (h : BUF.toNat + off < 2 ^ 63) :
    (BUF + BitVec.ofNat 64 off).toNat = BUF.toNat + off := toNat_add_k (by omega)

end s2

/-! ## `off = off + w` -/

theorem step_off {s0 : State σ} {p1 : Ptrs} {base : Nat} {FR ND K PL CB CL HL BUF : BitVec 64}
    {Wx : BitVec 64 → Prop} {off e : Nat} {wn : MlS} {Lx : Locals → Prop}
    (hLx : ∀ m v, Lx m → Lx (m.update (nm "off", v))) :
    Hoare σ X (fun t => S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off e t ∧
        t.locals.lookup wn = some (.val (.word (BitVec.ofNat 64 e))) ∧ Lx t.locals)
      (.assign .local (nm "off") (.op .add [lv (nm "off"), lv wn]))
      (fun r t => r = none ∧ S2 s0 p1 base FR ND K PL CB CL HL BUF Wx (off + e) 0 t ∧
        Lx t.locals) := by
  refine hoare_assign fun t _ ⟨h, hw, hL⟩ v hv _ => ?_
  rw [ev_add2 (ev_lw h.offv) (ev_lw hw), BitVec.ofNat_add_ofNat] at hv
  cases hv
  refine ⟨rfl, ⟨fL_upd h.fl fLN_off _, by rw [lk_set_ne _ _ (by decide)]; exact h.hlv,
    by rw [lk_set_ne _ _ (by decide)]; exact h.bufv, lk_set_self _ _ _, by have := h.bnd; omega,
    aFr_mono h.af (wF_le (by omega) fun _ h => h), h.be⟩, hLx _ _ hL⟩

/-! ## The writer calls -/

/-- `var wn = rlp_encode_bytes(buf + off, src, n); c`, its length `E` fixed by the source byte. -/
theorem call_enc (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
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
      Hoare σ X (fun u => u = t) c Q) :
    Hoare σ X (fun t => S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off 0 t ∧ Lx t.locals)
      (.decCall wn .one (nm "rlp_encode_bytes") [bufOff, Sx, Nx] c) Q := by
  refine hoare_decCallS ((footD_rlp_encode_bytes hC hA hT).and (Spec.Inv.funSpec_be _))
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
  exact hoare_conseq (hc _ hst (hLx _ _ hL) (lk_set_self _ _ _)) (fun _ _ h => h)
    fun r t' _ _ h => hQ r t' _ h

/-- `var wn = node_write_ref(c, buf + off); k`: the length `RL`, the hash cell of `c` and the
keccak cells in `Wx2`. -/
theorem call_ref (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) {s0 : State σ} {p1 : Ptrs} {base : Nat}
    {FR ND K PL CB CL HL BUF ks kp : BitVec 64} (hK : KOK s0 ks kp)
    {Wx Wx2 : BitVec 64 → Prop} {off : Nat} (hbuf : base ≤ BUF.toNat) (hb8 : base % 8 = 0)
    (hbp : base ≤ p1.hp) {wn : MlS} (hwn : S2N wn) {Cx : ExpHOL 64} {Cv RLs : BitVec 64}
    {Lx : Locals → Prop} {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hLx : ∀ m v, Lx m → Lx (m.update (wn, v)))
    (hCv : ∀ t, S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off 0 t → Lx t.locals → ∀ v,
      ev t Cx = some v → v = .val (.word Cv))
    (hRL : ∀ t, S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off 0 t → Lx t.locals →
      (Cv = 0 ∨ heapBase ≤ Cv.toNat) → RL t.memory Cv = RLs)
    (hW1 : ∀ a, Wx a → Wx2 a) (hW2 : ∀ a, KIn ks kp a → Wx2 a)
    (hW3 : heapBase ≤ Cv.toNat → Wx2 (Cv + 24))
    (hQ : ∀ r (t : State σ) o, Q r t → Q r { t with locals := t.locals.resVarEq (wn, o) })
    (hc : ∀ t, S2 s0 p1 base FR ND K PL CB CL HL BUF Wx2 off RLs.toNat t → Lx t.locals →
      t.locals.lookup wn = some (.val (.word RLs)) →
      Hoare σ X (fun u => u = t) c Q) :
    Hoare σ X (fun t => S2 s0 p1 base FR ND K PL CB CL HL BUF Wx off 0 t ∧ Lx t.locals)
      (.decCall wn .one (nm "node_write_ref") [Cx, bufOff] c) Q := by
  refine hoare_decCallS ((ret_node_write_ref hC hA hT hNS).and (Spec.Inv.funSpec_be _))
    fun t _ ⟨h, hL⟩ vs hvs callee v st ⟨hR, hbe⟩ _ _ => ?_
  obtain ⟨u1, u2, rfl, e1, e2⟩ := evs_two_inv hvs
  obtain rfl := hCv t h hL u1 e1
  rw [ev_bufOff h] at e2
  cases e2
  obtain ⟨hgl, q, hq, hoq, hpq, -⟩ := h.af
  have hpt : ptrsOf (callEntryStateHOLFinite t callee) = some q := hq
  have hK2 : KOK (callEntryStateHOLFinite t callee) ks kp := kOK_of hK hgl
  obtain ⟨rfl, hCz, hnw, hF⟩ := hR v rfl Cv _ ks kp q rfl hpt hoq hK2
  have hRL' : RL (callEntryStateHOLFinite t callee).memory Cv = RLs := hRL t h hL hCz
  rw [hRL'] at hnw hF ⊢
  have hb := h.bnd
  have hDn := bufOff_toNat (BUF := BUF) (off := off) (by omega)
  rw [hDn] at hnw
  have hst : S2 s0 p1 base FR ND K PL CB CL HL BUF Wx2 off RLs.toNat
      (setVarHOLFinite wn (.val (.word RLs)) { st with locals := t.locals }) := by
    have h' : S2 s0 p1 base FR ND K PL CB CL HL BUF Wx2 off RLs.toNat
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
  exact hoare_conseq (hc _ hst (hLx _ _ hL) (lk_set_self _ _ _)) (fun _ _ h => h)
    fun r t' _ _ h => hQ r t' _ h

end InitECandidate.Solver.Spec.Mpt.Leaves
