import InitECandidate.Solver.Spec.Mpt.Leaves.FinEnc

/-!
# `node_write_ref` and the list header functions

* `ret_rlp_list_header_len`: returns `hdrLen payload`, writes nothing.
* `ret_rlp_encode_list_header`: writes `[dst, dst + hdrLen payload)`, returns its length, and
  `dst + hdrLen payload < 2^63` (under `DomTop`).
* `ret_node_write_ref`: `node_write_ref(c, dst)` returns `RL M c`, the length `node_ref_len(c)`
  returns in the same memory `M`; it writes the cells overlapping `[dst, dst + RL M c)`, the hash
  cell `c + 24` (with `c ≥ heapBase`, by `NullSafe`), the keccak buffers and the fresh heap, keeps
  every global but `heap_ptr`, and `dst + RL M c < 2^63` unless the length is `0`.
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
open InitECandidate.Solver.MemSafe.Helpers (BWPost AlignedDom Locals byteAlign_toNat
  overlap_mono overlap_byte toNat_add2 toNat_addc HdrR)

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd Overlap ModifiesOnly gword gHeap argW)

/-! ## The list header functions -/

theorem ret_rlp_list_header_len (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "rlp_list_header_len") (fun vs s r t => ∀ v, r = .returned v →
      ∀ PL : BitVec 64, vs = [.val (.word PL)] →
        t.globals = s.globals ∧ t.memory = s.memory ∧ v = .val (.word (hdrLen PL))) := by
  intro vs body callee rs hl s0 hs hloc r hr v hv PL hvs
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, -, hA⟩ := lookupCode_one code_rlp_list_header_len hl
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  have h0 : s0.locals.lookup (nm "payload_len") = some (.val (.word PL)) := by rw [hloc]; exact hA
  have H : Hoare σ X (fun t => t = s0) rlhlBody (fun r t => ∀ v, r = some (.returned v) →
      t.globals = s0.globals ∧ t.memory = s0.memory ∧ v = .val (.word (hdrLen PL))) := by
    refine hoare_tailCall (footRet_rlp_header_len hC) fun t _ ht vs hvs callee v st hR _ => ?_
    subst t
    rw [evs_cons (ev_lw h0) evs_nil] at hvs
    cases hvs
    obtain ⟨hg, hm, hret⟩ := hR (by simp [Good]) trivial
    intro w hw
    cases hw
    refine ⟨hg, ?_, hret v rfl PL rfl⟩
    funext a
    exact hm a (fun h => h.elim)
  have := H s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr] at this
  exact this v (by rw [hv])

theorem ret_rlp_encode_list_header (hC : X.code.lookup = guestCode) (hT : DomTop X) :
    FunSpec σ X (nm "rlp_encode_list_header") (fun vs s r t => ∀ v, r = .returned v →
      ∀ D PL : BitVec 64, vs = [.val (.word D), .val (.word PL)] →
        t.globals = s.globals ∧
        ModifiesOnly (Overlap D.toNat (MemSafe.Helpers.hdrLen PL.toNat)) s.memory t.memory ∧
        v = .val (.word (hdrLen PL)) ∧ D.toNat + MemSafe.Helpers.hdrLen PL.toNat < 2 ^ 63) := by
  intro vs body callee rs hl s0 hs hloc r hr v hv D PL hvs
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hA, hB⟩ := lookupCode_two code_rlp_encode_list_header (by decide) hl
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have hd0 : s0.locals.lookup (nm "dst") = some (.val (.word D)) := by rw [hloc]; exact hA
  have hp0 : s0.locals.lookup (nm "payload_len") = some (.val (.word PL)) := by rw [hloc]; exact hB
  have H : Hoare σ X (fun t => t = s0) relhBody (fun r t => ∀ v, r = some (.returned v) →
      t.globals = s0.globals ∧
      ModifiesOnly (Overlap D.toNat (MemSafe.Helpers.hdrLen PL.toNat)) s0.memory t.memory ∧
      v = .val (.word (hdrLen PL)) ∧ D.toNat + MemSafe.Helpers.hdrLen PL.toNat < 2 ^ 63) := by
    refine hoare_tailCall (footD_rlp_write_header hC hT) fun t _ ht vs hvs callee v st hR _ => ?_
    subst t
    rw [evs_cons (ev_lw hd0) (evs_cons (ev_cw _ 192) (evs_cons (ev_lw hp0) evs_nil))] at hvs
    cases hvs
    obtain ⟨hg, hm, hret⟩ := hR (by simp [Good]) trivial
    intro w hw
    cases hw
    obtain ⟨hv', hb⟩ := hret v rfl D PL rfl rfl
    refine ⟨hg, hm.mono fun a ⟨D2, N2, hD2, hN2, hov⟩ => ?_, by rw [hv', hdrLen_eq], hb⟩
    cases hD2
    cases hN2
    exact hov
  have := H s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr] at this
  exact this v (by rw [hv])

/-! ## Frame steps -/

theorem aFr_mem {p : Ptrs} {s0 t u : State σ} {W : Nat → BitVec 64 → Prop} (h : AFr p s0 W t)
    (hg : u.globals = t.globals) (hm : ∀ a, u.memory a ≠ t.memory a → ∀ hp, p.hp ≤ hp → W hp a) :
    AFr p s0 W u := by
  obtain ⟨hgl, p1, hp1, ho1, hle, hw⟩ := h
  refine ⟨fun g hgn => by rw [hg]; exact hgl g hgn, p1, by rw [ptrsOf_frame hg]; exact hp1, ho1, hle,
    fun a ha => ?_⟩
  by_cases e : u.memory a = t.memory a
  · exact hw a (by rw [← e]; exact ha)
  · exact hm a e _ hle

/-- A callee with its own allocator frame. -/
theorem aFr_call {p q : Ptrs} {s0 t u : State σ} {W W' : Nat → BitVec 64 → Prop}
    (hmono : ∀ h h' a, h ≤ h' → W h a → W h' a) (h : AFr p s0 W t) (hq : ptrsOf t = some q)
    (hu : AFr q t W' u) (hW : ∀ h a, q.hp ≤ h → W' h a → W h a) : AFr p s0 W u := by
  obtain ⟨hgl, p1, hp1, ho1, hle, hw⟩ := h
  rw [hq] at hp1
  cases hp1
  obtain ⟨hgl', p2, hp2, ho2, hle2, hw'⟩ := hu
  refine ⟨fun g hgn => (hgl' g hgn).trans (hgl g hgn), p2, hp2, ho2, by omega, fun a ha => ?_⟩
  by_cases e : u.memory a = t.memory a
  · exact hmono _ _ a hle2 (hw a (by rw [← e]; exact ha))
  · exact hW _ a hle2 (hw' a e)

/-- A byte store at the local `x = D` under `DomTop`. -/
theorem hoare_st8D (hT : DomTop X) {P : State σ → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} {x : MlS} {D : BitVec 64} {e : ExpHOL 64}
    (hD : ∀ t, P t → t.locals.lookup x = some (.val (.word D)))
    (h : ∀ t : State σ, P t → D.toNat < 2 ^ 62 + 8 → ∀ u : State σ, u.locals = t.locals →
      u.globals = t.globals → u.be = t.be →
      (∀ a, u.memory a ≠ t.memory a → Overlap D.toNat 1 a) → Q none u) :
    Hoare σ X P (.storeByte (lv x) e) Q := by
  refine Spec.Inv.hoare_storeByte fun t hs hP w y mem hw _ hmem => ?_
  rw [ev_lw (hD t hP)] at hw
  cases hw
  obtain ⟨hdom, rfl⟩ := Spec.Inv.storeByte_eq hmem
  have hlt := hT _ (hs.2.1 ▸ hdom)
  rw [byteAlign_toNat] at hlt
  refine h t hP (by omega) _ rfl rfl rfl fun a ha => ?_
  have hne : a = panByteAlignHOL D := by
    by_contra hn
    exact ha (Spec.Inv.upd_ne hn)
  subst hne
  exact overlap_byte (le_refl _) (by omega)

/-! ## `node_write_ref` -/

/-- The cells `node_write_ref(C, D)` may write, `n` its output length. -/
def WrW (p : Ptrs) (ks kp C D : BitVec 64) (n : Nat) (hp : Nat) (a : BitVec 64) : Prop :=
  Overlap D.toNat n a ∨ (a = C + 24 ∧ heapBase ≤ C.toNat) ∨ KIn ks kp a ∨
    (p.hp ≤ a.toNat ∧ a.toNat < hp)

theorem wrW_mono {p : Ptrs} {ks kp C D : BitVec 64} {n : Nat} :
    ∀ h h' a, h ≤ h' → WrW p ks kp C D n h a → WrW p ks kp C D n h' a := by
  intro h h' a hh hw
  rcases hw with hw | hw | hw | ⟨h1, h2⟩
  · exact Or.inl hw
  · exact Or.inr (Or.inl hw)
  · exact Or.inr (Or.inr (Or.inl hw))
  · exact Or.inr (Or.inr (Or.inr ⟨h1, by omega⟩))

/-- The return post of `node_write_ref(C, D)` from the entry state `s0`. -/
def WrPost (p : Ptrs) (s0 : State σ) (ks kp C D : BitVec 64) (v : ValueHOL 64) (t : State σ) :
    Prop :=
  v = .val (.word (RL s0.memory C)) ∧ (C = 0 ∨ heapBase ≤ C.toNat) ∧
    ((RL s0.memory C).toNat = 0 ∨ D.toNat + (RL s0.memory C).toNat < 2 ^ 63) ∧
    AFr p s0 (WrW p ks kp C D (RL s0.memory C).toNat) t

/-- The loaded node word at `C` lies in the domain, so `C ≥ heapBase`. -/
theorem heapBase_of_load (hNS : MemSafe.NullSafe X) {t : State σ} (hs : InCtx t X) {C : BitVec 64}
    {v : ValueHOL 64} (hl : t.locals.lookup (nm "child") = some (.val (.word C)))
    (h : ev t (.load .one (.op .add [lv (nm "child"), cw 0])) = some v) : heapBase ≤ C.toNat := by
  obtain ⟨w, hw, hd, -⟩ := ev_load1_inv' h
  rw [ev_add_cw hl 0] at hw
  cases hw
  have := hNS _ (hs.2.1 ▸ hd)
  simpa using this

/-- `memcpy(a1, a2, a3)` under `DomTop`: the new state changes only the destination cells. -/
theorem hoare_memcpyD (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {a1 a2 a3 : ExpHOL 64} {Dm Nm : BitVec 64}
    (h1 : ∀ t, P t → ev t a1 = some (.val (.word Dm)))
    (h2 : ∀ t, P t → ∀ v, ev t a2 = some v → ∃ S : BitVec 64, v = .val (.word S))
    (h3 : ∀ t, P t → ev t a3 = some (.val (.word Nm)))
    (h : ∀ t : State σ, P t → ∀ u : State σ, u.locals = t.locals → u.globals = t.globals →
      u.be = t.be → (∀ a, u.memory a ≠ t.memory a → Overlap Dm.toNat Nm.toNat a) →
      (Nm.toNat = 0 ∨ Dm.toNat + Nm.toNat < 2 ^ 63) → Q none u) :
    Hoare σ X P (callD (nm "memcpy") [a1, a2, a3]) Q := by
  refine hoare_callD ((footD_memcpy hC hA hT).and (Spec.Inv.funSpec_be _))
    fun t _ hP vs hvs callee v st ⟨hR, hbe⟩ _ => ?_
  obtain ⟨u1, us1, rfl, e1, hus1⟩ := evs_cons_inv hvs
  obtain ⟨u2, us2, rfl, e2, hus2⟩ := evs_cons_inv hus1
  obtain ⟨u3, us3, rfl, e3, hus3⟩ := evs_cons_inv hus2
  have : us3 = [] := by
    have h0 : evs t ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at hus3; exact (Option.some.inj hus3).symm
  subst this
  rw [h1 t hP] at e1
  cases e1
  rw [h3 t hP] at e3
  cases e3
  obtain ⟨S, rfl⟩ := h2 t hP _ e2
  obtain ⟨-, hg, hm, hnw⟩ := hR (by simp [Good]) Dm S Nm rfl
  exact h t hP _ rfl hg hbe (fun a ha => mod_ne hm ha) hnw

theorem rl_zero (M : MemSafe.Mem) {C : BitVec 64} (h : C = 0) : RL M C = BitVec.ofNat 64 1 := by
  rw [RL, if_pos h]

theorem rl_hashed (M : MemSafe.Mem) {C : BitVec 64} (h1 : C ≠ 0) (h2 : rd M C = 0) :
    RL M C = BitVec.ofNat 64 33 := by
  rw [RL, if_neg h1, if_pos h2]

theorem rl_short (M : MemSafe.Mem) {C : BitVec 64} (h1 : C ≠ 0) (h2 : rd M C ≠ 0)
    (h3 : (rd M (C + BitVec.ofNat 64 16)).toNat < 32) : RL M C = rd M (C + BitVec.ofNat 64 16) := by
  rw [RL, if_neg h1, if_neg h2, if_pos h3]

theorem rl_long (M : MemSafe.Mem) {C : BitVec 64} (h1 : C ≠ 0) (h2 : rd M C ≠ 0)
    (h3 : ¬ (rd M (C + BitVec.ofNat 64 16)).toNat < 32) : RL M C = BitVec.ofNat 64 33 := by
  rw [RL, if_neg h1, if_neg h2, if_neg h3]

theorem toNat_33 : (BitVec.ofNat 64 33).toNat = 33 := rfl

theorem ret_node_write_ref (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) :
    FunSpec σ X (nm "node_write_ref") (fun vs s r t => ∀ v, r = .returned v →
      ∀ (C D ks kp : BitVec 64) (p : Ptrs), vs = [.val (.word C), .val (.word D)] →
        ptrsOf s = some p → p.Ordered → KOK s ks kp → WrPost p s ks kp C D v t) := by
  intro vs body callee rs hl s0 hs hloc r hr v hv C D ks kp p hvs hp hord hK
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hA0, hB0⟩ := lookupCode_two code_node_write_ref (by decide) hl
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have hc0 : s0.locals.lookup (nm "child") = some (.val (.word C)) := by rw [hloc]; exact hA0
  have hd0 : s0.locals.lookup (nm "dst") = some (.val (.word D)) := by rw [hloc]; exact hB0
  have hE := heapEnd_lt'
  let W := WrW p ks kp C D (RL s0.memory C).toNat
  let Q : Option (PanSemResultExact 64) → State σ → Prop := fun r t => ∀ v, r = some (.returned v) →
    WrPost p s0 ks kp C D v t
  have hQ : ∀ r (t : State σ) L, Q r t → Q r { t with locals := L } := fun _ _ _ h => h
  -- the body states before any store: locals, entry memory, globals, byte order
  let P0 : State σ → Prop := fun t => t.locals.lookup (nm "child") = some (.val (.word C)) ∧
    t.locals.lookup (nm "dst") = some (.val (.word D)) ∧ t.memory = s0.memory ∧
    t.globals = s0.globals ∧ t.be = s0.be
  have hP0 : P0 s0 := ⟨hc0, hd0, rfl, rfl, rfl⟩
  have hAF : ∀ t, P0 t → AFr p s0 W t := fun t ⟨_, _, hm, hg, _⟩ =>
    ⟨fun g _ => by rw [hg], p, by rw [ptrsOf_frame hg]; exact hp, hord, le_rfl,
      fun a ha => absurd (by rw [hm]) ha⟩
  -- the states after the first store: `child`, `dst` kept, `D < 2^62 + 8`, the frame
  let PS : State σ → Prop := fun t => t.locals.lookup (nm "child") = some (.val (.word C)) ∧
    t.locals.lookup (nm "dst") = some (.val (.word D)) ∧ D.toNat < 2 ^ 62 + 8 ∧ AFr p s0 W t
  -- `st8 dst, 160; memcpy(dst + 1, src, 32); return 33` when the length is `33`
  have tail33 : ∀ (P : State σ → Prop) (src : ExpHOL 64),
      (∀ t, P t → t.locals.lookup (nm "child") = some (.val (.word C)) ∧
        t.locals.lookup (nm "dst") = some (.val (.word D)) ∧ AFr p s0 W t) →
      (∀ t, P t → ∀ u : State σ, u.locals = t.locals → ∀ v, ev u src = some v →
        ∃ S : BitVec 64, v = .val (.word S)) →
      RL s0.memory C = BitVec.ofNat 64 33 → heapBase ≤ C.toNat →
      Hoare σ X P (.seq (.storeByte (lv (nm "dst")) (cw 160))
        (.seq (callD (nm "memcpy") [.op .add [lv (nm "dst"), cw 1], src, cw 32])
          (.return (cw 33)))) (fun r t => r ≠ none ∧ Q r t) := by
    intro P src hPf hsrc hRL hb
    have hW33 : ∀ a hp, Overlap D.toNat 33 a → W hp a := fun a hp h =>
      Or.inl (by rw [hRL, toNat_33]; exact h)
    let PS' : State σ → Prop := fun t => PS t ∧ ∃ t0, P t0 ∧ t.locals = t0.locals
    refine hoare_seq (R := fun r t => r = none ∧ PS' t) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_st8D hT (fun t h => (hPf t h).2.1) fun t hP hD u hlu hgu _ hmu => ?_
      obtain ⟨h1, h2, hF⟩ := hPf t hP
      exact ⟨rfl, ⟨by rw [hlu]; exact h1, by rw [hlu]; exact h2, hD,
        aFr_mem hF hgu fun a ha hp _ => hW33 a hp (overlap_mono (hmu a ha) (le_refl _) (by omega))⟩,
        t, hP, hlu⟩
    refine hoare_seq (R := fun r t => r = none ∧ PS t) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · have hd1 : ∀ t, PS t → ev t (.op .add [lv (nm "dst"), cw 1]) =
          some (.val (.word (D + BitVec.ofNat 64 1))) := fun t h => ev_add_cw h.2.1 1
      refine hoare_memcpyD hC hA hT (fun t h => hd1 t h.2.1)
        (fun t ⟨_, _, t0, h0, hl0⟩ v hv => hsrc t0 h0 t hl0 v hv)
        (fun t _ => ev_cw t 32) fun t ⟨_, ⟨h1, h2, hD, hF⟩, _⟩ u hlu hgu _ hmu _ => ?_
      have e1 : (D + BitVec.ofNat 64 1).toNat = D.toNat + 1 := toNat_addc (by omega)
      exact ⟨rfl, by rw [hlu]; exact h1, by rw [hlu]; exact h2, hD, aFr_mem hF hgu fun a ha hp _ =>
        hW33 a hp (overlap_mono (hmu a ha) (by rw [e1]; omega)
          (by have h32 : (BitVec.ofNat 64 32).toNat = 32 := rfl; omega))⟩
    refine hoare_return fun t _ ⟨_, _, _, hD, hF⟩ v hv => ⟨by simp, fun w hw => ?_⟩
    cases hw
    rw [ev_cw] at hv
    cases hv
    exact ⟨by rw [hRL], Or.inr hb, Or.inr (by rw [hRL, toNat_33]; omega), hF⟩
  have H : Hoare σ X P0 nwrBody Q := by
    unfold nwrBody
    -- `if child == 0 { st8 dst, 128; return 1; }`
    refine hoare_seq (R := fun r t => (r = none ∧ P0 t ∧ C ≠ 0) ∨ (r ≠ none ∧ Q r t)) ?_
      (fun _ _ _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
    · refine hoare_ite ?_ (hoare_skip fun t _ ⟨hP, hc⟩ => Or.inl ⟨rfl, hP, equal_false
        (cmp_val_false hc (ev_lw hP.1) (ev_cw _ 0))⟩)
      refine hoare_seq (R := fun r t => r = none ∧ C = 0 ∧ D.toNat < 2 ^ 62 + 8 ∧
          AFr p s0 W t) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoare_st8D hT (fun t h => h.1.2.1) fun t ⟨hP, w, hw, hw0⟩ hD u _ hgu _ hmu => ?_
        have hC0 := equal_true (cmp_val_true hw hw0 (ev_lw hP.1) (ev_cw _ 0))
        refine ⟨rfl, hC0, hD, aFr_mem (hAF t hP) hgu fun a ha _ _ => Or.inl ?_⟩
        rw [rl_zero _ hC0]
        exact hmu a ha
      · refine hoare_return fun t _ ⟨_, hC0, hD, hF⟩ v hv => Or.inr ⟨by simp, fun w hw => ?_⟩
        cases hw
        rw [ev_cw] at hv
        cases hv
        refine ⟨by rw [rl_zero _ hC0], Or.inl hC0,
          Or.inr (by rw [rl_zero _ hC0, show (BitVec.ofNat 64 1).toNat = 1 from rfl]; omega), hF⟩
    refine hoare_pre (P := fun t => P0 t ∧ C ≠ 0) ?_
      fun t _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1)
    -- `if lds child == 0 { hashed arm }`
    refine hoare_seq (R := fun r t => (r = none ∧ P0 t ∧ (C ≠ 0 ∧ heapBase ≤ C.toNat ∧
        rd s0.memory C ≠ 0)) ∨ (r ≠ none ∧ Q r t)) ?_
      (fun _ _ _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
    · refine hoare_ite ?_ (hoare_skip fun t hs ⟨⟨hP, hC0⟩, hc⟩ => ?_)
      · -- the hashed arm
        refine hoare_pre (P := fun t => P0 t ∧ (heapBase ≤ C.toNat ∧ rd s0.memory C = 0 ∧ C ≠ 0))
          ?_ fun t hs ⟨⟨hP, hC0⟩, w, hw, hw0⟩ => ?_
        · refine hoare_pure fun ⟨hb, hk, hC0⟩ => ?_
          exact hoare_post (tail33 P0 _ (fun t h => ⟨h.1, h.2.1, hAF t h⟩)
            (fun t _ u _ v hv => by obtain ⟨w, -, -, rfl⟩ := ev_load1_inv' hv; exact ⟨_, rfl⟩)
            (rl_hashed _ hC0 hk) hb) fun r t _ _ h => Or.inr h
        · obtain ⟨x, y, hx, hy, hxy⟩ := ev_cmp_inv hw
          have hb := heapBase_of_load hNS hs hP.1 hx
          obtain ⟨w0, hw0', -, hx'⟩ := ev_load1_inv' hx
          rw [ev_add_cw hP.1 0] at hw0'
          cases hw0'
          cases hx'
          rw [ev_cw] at hy
          cases hy
          have hk := equal_true (cmp_val_true hw hw0 hx (ev_cw _ 0))
          rw [rd_add0, hP.2.2.1] at hk
          exact ⟨hP, hb, hk, hC0⟩
      · obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
        have hb := heapBase_of_load hNS hs hP.1 hx
        obtain ⟨w0, hw0', -, hx'⟩ := ev_load1_inv' hx
        rw [ev_add_cw hP.1 0] at hw0'
        cases hw0'
        cases hx'
        rw [ev_cw] at hy
        cases hy
        have hk := equal_false hxy
        rw [rd_add0, hP.2.2.1] at hk
        exact Or.inl ⟨rfl, hP, hC0, hb, hk⟩
    refine hoare_pre (P := fun t => P0 t ∧ (C ≠ 0 ∧ heapBase ≤ C.toNat ∧ rd s0.memory C ≠ 0)) ?_
      fun t _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1)
    refine hoare_pure fun ⟨hC0, hb, hk0⟩ => ?_
    unfold failK
    refine hoare_guard_seq (funRet_mpt_fail hC) ?_
    -- `var rp = lds (child + 8); var rl = lds (child + 16)`
    refine hoare_decL hQ fun t _ ⟨hP, _⟩ v hv _ => ?_
    obtain ⟨w8, hw8, -, rfl⟩ := ev_load1_inv' hv
    rw [ev_add_cw hP.1 8] at hw8
    cases hw8
    set RP := rd t.memory (C + BitVec.ofNat 64 8)
    have hP1 : P0 (setVarHOLFinite (nm "rp") (.val (.word RP)) t) := by
      refine ⟨?_, ?_, hP.2.2.1, hP.2.2.2.1, hP.2.2.2.2⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hP.1
      · rw [lk_set_ne _ _ (by decide)]; exact hP.2.1
    have hrp : (setVarHOLFinite (nm "rp") (.val (.word RP)) t).locals.lookup (nm "rp") =
        some (.val (.word RP)) := lk_set_self _ _ _
    refine hoare_decL hQ fun t2 _ ht2 v2 hv2 _ => ?_
    subst t2
    obtain ⟨w16, hw16, -, rfl⟩ := ev_load1_inv' hv2
    rw [ev_add_cw hP1.1 16] at hw16
    cases hw16
    set t1 := setVarHOLFinite (nm "rp") (.val (.word RP)) t
    set RLc := rd t1.memory (C + BitVec.ofNat 64 16)
    have hRLc : RLc = rd s0.memory (C + BitVec.ofNat 64 16) := by
      show rd t1.memory _ = _; rw [hP1.2.2.1]
    set t2 := setVarHOLFinite (nm "rl") (.val (.word RLc)) t1
    have hP2 : P0 t2 := by
      refine ⟨?_, ?_, hP1.2.2.1, hP1.2.2.2.1, hP1.2.2.2.2⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hP1.1
      · rw [lk_set_ne _ _ (by decide)]; exact hP1.2.1
    have hrl2 : t2.locals.lookup (nm "rl") = some (.val (.word RLc)) := lk_set_self _ _ _
    have hrp2 : t2.locals.lookup (nm "rp") = some (.val (.word RP)) := by
      rw [lk_set_ne _ _ (by decide)]; exact hrp
    unfold nwrK
    refine hoare_seq (R := fun r u => (r = none ∧ u = t2 ∧ ¬ RLc.toNat < 32) ∨ (r ≠ none ∧ Q r u))
      ?_ (fun _ _ _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
    · refine hoare_ite ?_ (hoare_skip fun u _ ⟨hu, hc⟩ => ?_)
      · -- `memcpy(dst, rp, rl); return rl`
        refine hoare_pre (P := fun u => u = t2 ∧ RLc.toNat < 32) ?_ fun u _ ⟨hu, w, hw, hw0⟩ => ⟨hu,
          by subst hu; exact lower_true (cmp_val_true hw hw0 (ev_lw hrl2) (ev_cw _ 32))⟩
        refine hoare_pure fun hlt => ?_
        have hRL : RL s0.memory C = RLc := by
          rw [rl_short _ hC0 hk0 (by rw [← hRLc]; exact hlt), hRLc]
        refine hoare_seq (R := fun r u => r = none ∧ u.locals = t2.locals ∧ AFr p s0 W u ∧
            (RLc.toNat = 0 ∨ D.toNat + RLc.toNat < 2 ^ 63)) ?_
          (fun _ _ _ hr _ h => absurd h.1 hr) ?_
        · refine hoare_memcpyD hC hA hT (fun u hu => by subst hu; exact ev_lw hP2.2.1)
            (fun u hu v hv => by subst hu; rw [ev_lw hrp2] at hv; cases hv; exact ⟨_, rfl⟩)
            (fun u hu => by subst hu; exact ev_lw hrl2) fun u hu u' hlu hgu _ hmu hnw => ?_
          subst hu
          exact ⟨rfl, hlu, aFr_mem (hAF _ hP2) hgu fun a ha _ _ => Or.inl (by
            rw [hRL]; exact hmu a ha), hnw⟩
        · refine hoare_return fun u _ ⟨_, hlu, hF, hnw⟩ v hv => Or.inr ⟨by simp, fun w hw => ?_⟩
          cases hw
          rw [ev_lw (by rw [hlu]; exact hrl2)] at hv
          cases hv
          exact ⟨by rw [hRL], Or.inr hb, by rw [hRL]; exact hnw, hF⟩
      · subst hu
        exact Or.inl ⟨rfl, rfl, by
          have := lower_false (cmp_val_false hc (ev_lw hrl2) (ev_cw _ 32)); simp at this; omega⟩
    refine hoare_pre (P := fun u => u = t2 ∧ ¬ RLc.toNat < 32) ?_
      fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1)
    refine hoare_pure fun hge => ?_
    have hRL : RL s0.memory C = BitVec.ofNat 64 33 := rl_long _ hC0 hk0 (by rw [← hRLc]; exact hge)
    -- `var h = node_hash_cached(child); st8 dst, 160; memcpy(dst + 1, h, 32); return 33`
    refine hoare_decCallL (ret_node_hash_cached hC hA hT) hQ
      fun u _ hu vs hvs callee v st hR _ hsh => ?_
    subst hu
    rw [evs_cons (ev_lw hP2.1) evs_nil] at hvs
    cases hvs
    have hpt : ptrsOf (callEntryStateHOLFinite t2 callee) = some p := by
      show ptrsOf t2 = _; rw [ptrsOf_frame hP2.2.2.2.1]; exact hp
    have hK2 : KOK (callEntryStateHOLFinite t2 callee) ks kp := by
      refine kOK_of hK fun g _ => ?_
      show t2.globals.lookup g = _; rw [hP2.2.2.2.1]
    have hu := hR v rfl C ks kp p rfl hpt hord hK2
    have hpt2 : ptrsOf t2 = some p := by rw [ptrsOf_frame hP2.2.2.2.1]; exact hp
    have hF : AFr p s0 W st := aFr_call wrW_mono (hAF _ hP2) hpt2 hu fun h a _ hw => by
        rcases hw with e | e | e
        · exact Or.inr (Or.inl ⟨e, hb⟩)
        · exact Or.inr (Or.inr (Or.inl e))
        · exact Or.inr (Or.inr (Or.inr e))
    obtain ⟨hw, rfl⟩ := val_of_shapeEq_one' hsh
    refine hoare_post (tail33 (fun u => u = setVarHOLFinite (nm "h") (.val (.word hw))
        { st with locals := t2.locals }) (lv (nm "h")) (fun u hu => by
          subst hu
          exact ⟨by rw [lk_set_ne _ _ (by decide)]; exact hP2.1,
            by rw [lk_set_ne _ _ (by decide)]; exact hP2.2.1, hF⟩)
        (fun u hu u' hlu v hv => by
          subst hu
          rw [ev_lv, hlu, lk_set_self] at hv
          cases hv
          exact ⟨_, rfl⟩) hRL hb) fun r t _ _ h => h.2
  have := H s0 hs hP0 (by rw [hr, hv]; trivial)
  rw [hr] at this
  exact this v (by rw [hv])

end InitECandidate.Solver.Spec.Mpt.Leaves
