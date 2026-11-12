import InitECandidate.Solver.MemSafe.Ins.DelRec

set_option autoImplicit false

/-!
# The delete records across calls, and `scratch_alloc(40)`

* `dl_call0` / `dl_call`: the chain across a call (same proof as `Dn.frG_call`);
* `frD_of_alloc`: after `fr = scratch_alloc(40)` the block is a fresh record (`FrD`), below the old
  scratch pointer (`fr + 40 <= q.sp`);
* `dl_upd_out`: a store below the chain's region keeps it.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type}

/-- **The record chain across a call** (keeping the caller's lower bound). -/
theorem dl_call0 {a : Act σ} (haC : a.C = Types.guestC) (haCb : a.Cb = Types.guestC)
    (hL0 : Layout Types.guestC a.p0 a.Γ0) (hsp0 : a.p0.sp ≤ scratchEnd) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r) (hsc : ScrOld a.Γ0 Γ)
    {T : BitVec 64} (h : DlG a Γ q s.memory q.sp a.p0.sp T) :
    DlG a Γ' q' st.memory q.sp a.p0.sp T := by
  have hord := heap_ord co.heap0
  have hord' := heap_ord co.heap
  have hse : scratchEnd < 2 ^ 64 := by decide
  have hM : ∀ x : BitVec 64, q.sp ≤ x.toNat → x.toNat < a.p0.sp → st.memory x = s.memory x := by
    intro x h1 h2
    refine co.frame x (fun ⟨o, ho, k, hk, _, hx⟩ => ?_) ?_
    · rw [haCb] at *
      obtain ⟨p1, hp1, hord1, hL, -⟩ := co.heap0.1
      rw [co.heap0.2.1] at hp1
      cases hp1
      exact regionFree haC co.heap0 hsc hL0 h1 h2 (hx ▸ cell_in hord1 hL ho hk)
    · unfold Ptrs.Allocated; right; right; exact ⟨h1, by omega⟩
  have h1 := dl_mem (a := a) (Γ := Γ) (q := q) (hi := a.p0.sp) (by omega) hM _ _ T (le_refl _) rfl h
  exact dl_ext co.ext co.nf co.mono hord hord' _ _ T rfl h1

/-- **The record chain across a call.** -/
theorem dl_call {a : Act σ} (haC : a.C = Types.guestC) (haCb : a.Cb = Types.guestC)
    (hL0 : Layout Types.guestC a.p0 a.Γ0) (hsp0 : a.p0.sp ≤ scratchEnd) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r) (hsc : ScrOld a.Γ0 Γ)
    {T : BitVec 64} (h : DlG a Γ q s.memory q.sp a.p0.sp T) :
    DlG a Γ' q' st.memory q'.sp a.p0.sp T :=
  dl_mono_lo co.mono.2.2 (dl_call0 haC haCb hL0 hsp0 co hsc h)

/-- **The record of `scratch_alloc(40)`.** -/
theorem frD_of_alloc {a : Act σ} (haC : a.C = Types.guestC) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {R : BitVec 64}
    (co : CO a sg' vs Γ Γ' q q' s st (.returned (.val (.word R)))) (hg : sg'.grows = false)
    (hvs : vs = [.val (.word (BitVec.ofNat 64 40))])
    (hLc : Good (some (PanSemResultExact.returned (.val (.word R)))) → ∀ n p,
      vs = [.val (.word n)] → ptrsOf (callEntryStateHOLFinite s callee) = some p → p.Ordered →
      st.memory = (callEntryStateHOLFinite s callee).memory ∧
      (∀ g, g ≠ Region.scratch.global → st.globals.lookup g =
        (callEntryStateHOLFinite s callee).globals.lookup g) ∧
      ∃ p', ptrsOf st = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
        ∀ v, PanSemResultExact.returned (.val (.word R)) = .returned v → ∃ q0 : BitVec 64,
          v = .val (.word q0) ∧ q0.toNat % 8 = 0 ∧ Region.scratch.Live p' q0.toNat n.toNat ∧
          ∀ x, q0.toNat ≤ x → x < q0.toNat + n.toNat → ¬ p.Allocated x) :
    FrD a R Γ' q' ∧ R.toNat + 40 ≤ q.sp ∧ q'.sp ≤ R.toNat := by
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := co.heap0.2.1
  have hord := heap_ord co.heap0
  obtain ⟨-, -, p', hp', hord', hmono, hret⟩ := hLc (by simp [Good]) _ q hvs hpe hord
  have hq' := co.heap.2.1
  rw [hp'] at hq'
  cases hq'
  obtain ⟨q0, hq0, h8, ⟨hl1, hl2⟩, hfree⟩ := hret _ rfl
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hq0
  subst hq0
  have h40 : (BitVec.ofNat 64 40).toNat = 40 := rfl
  rw [h40] at hl2 hfree
  have hse : scratchEnd < 2 ^ 64 := by decide
  have hsp : R.toNat + 40 ≤ q.sp := by
    by_contra hc
    refine hfree (R.toNat + 39) (by omega) (by omega) ?_
    unfold Ptrs.Allocated
    right; right
    exact ⟨by omega, by omega⟩
  refine ⟨⟨h8, by omega, fun y hy => ?_⟩, hsp, hl1⟩
  obtain ⟨y8, y1, y2⟩ := hy
  have hyR : R.toNat ≤ y.toNat := by omega
  have hnA : ¬ q.Allocated y.toNat := hfree _ hyR y2
  refine ⟨fun hin => ?_, fun hA => hnA (Spec.Mpt.Dec.allocated_mono co.heap0.2.2.1 hA), ?_⟩
  · obtain ⟨p1, hp1, hord1, hL, -⟩ := co.heap0.1
    rw [co.heap0.2.1] at hp1
    cases hp1
    exact hnA (HtabEntries.alloc_of_inObj hord1 hL (co.nfp hg) hin)
  · unfold Ptrs.Allocated
    right; right
    exact ⟨by omega, by omega⟩

/-- A store below the chain's region keeps the chain. -/
theorem dl_upd_out {a : Act σ} {Γ : Gam} {q : Ptrs} {M : Mem} {lo hi : Nat}
    {T A V : BitVec 64} (hhi : hi < 2 ^ 64) (hA : A.toNat < lo) (h : DlG a Γ q M lo hi T) :
    DlG a Γ q (Struct.upd M A V) lo hi T :=
  dl_mem (lo0 := lo) hhi (fun x h1 _ => upd_ne (fun e => by subst e; omega)) _ _ T (le_refl _) rfl h

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.dl_call
#print axioms InitECandidate.Solver.MemSafe.Ins.frD_of_alloc
#print axioms InitECandidate.Solver.MemSafe.Ins.dl_upd_out
