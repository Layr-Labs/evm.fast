import InitECandidate.Solver.SourceCost.Table
import Flapjack.Pancake.Semantics.PanSem.Semantics

/-!
# From a cost bound on `main` to the source behaviour

If the call `main()` has cost at most `Bm` in context `X`, then every terminating
behaviour of `semantics s main` (with `InCtx s X`) is witnessed by a run that consumes
at most `Bm` clock ticks.

For the challenge run (`InitE.sourceBehaviour`) the context is `guestCtx`: after declaration
evaluation the state has code map `guestCode` and memory domains `InitE.ordinaryDomain` /
`InitE.sharedDomain` (`sourceBehaviour_state`). `sourceBehaviour_terminate_bounded_of_table`
takes the bound for `main` from any sound cost table for `guestCtx` (such as
`Shards.finalState_sound_guest`).
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type}

theorem semantics_terminate_run {s : PanSemStateFiniteExact width σ} {start : MlS}
    {outcome : HolOutcome} {events : List HolIoEvent}
    (h : semantics s start = .terminate outcome events) :
    ∃ k t r, evaluateHOLFiniteState { s with clock := k } (.call none start []) = (r, t) ∧
      Good r ∧ events = t.ffi.ioEvents ∧
      ((∃ e, r = some (.finalFfi e) ∧ outcome = .ffiOutcome e) ∨
        (∃ v, r = some (.returned v) ∧ outcome = .success)) := by
  unfold semantics at h
  dsimp only at h
  split at h
  · cases h
  · split at h
    · rename_i res hres
      subst h
      obtain ⟨k, t, r, out, hrun, hr, heq⟩ := holOptionSome_some hres
      simp only [HolBehaviour.terminate.injEq] at heq
      obtain ⟨rfl, rfl⟩ := heq
      refine ⟨k, t, r, hrun, ?_, rfl, ?_⟩
      · split at hr
        · simp [Good]
        · simp [Good]
        · exact hr.elim
      · split at hr
        · rename_i e; exact Or.inl ⟨e, rfl, hr⟩
        · rename_i v; exact Or.inr ⟨v, rfl, hr⟩
        · exact hr.elim
    · cases h

/-- The terminating run of `main` consumes at most `Bm` ticks. -/
theorem semantics_terminate_bounded {s : PanSemStateFiniteExact width σ} {start : MlS}
    {X : Ctx width} (hX : InCtx s X) {Bm : Nat} (hc : Cost σ X (.call none start []) Bm)
    {outcome : HolOutcome} {events : List HolIoEvent}
    (h : semantics s start = .terminate outcome events) :
    ∃ k t r, evaluateHOLFiniteState { s with clock := k } (.call none start []) = (r, t) ∧
      Good r ∧ events = t.ffi.ioEvents ∧ k ≤ t.clock + Bm ∧
      ((∃ e, r = some (.finalFfi e) ∧ outcome = .ffiOutcome e) ∨
        (∃ v, r = some (.returned v) ∧ outcome = .success)) := by
  obtain ⟨k, t, r, hrun, hg, hev, hout⟩ := semantics_terminate_run h
  have := hc { s with clock := k } (by exact hX) (by rw [hrun]; exact hg)
  rw [hrun] at this
  exact ⟨k, t, r, hrun, hg, hev, this.1, hout⟩

/-- The clock bound of a call to `start` from the single state `s`, for every starting clock.
It is the only consequence of a cost bound the assembly needs (`semantics_terminate_bounded_at`),
so a bound that only holds at the post-declaration state (a conditional cost) suffices. -/
def SrcBoundAt (s : PanSemStateFiniteExact width σ) (start : MlS) (B : Nat) : Prop :=
  ∀ k, Good (evaluateHOLFiniteState { s with clock := k } (.call none start [])).1 →
    k ≤ (evaluateHOLFiniteState { s with clock := k } (.call none start [])).2.clock + B

theorem srcBoundAt_of_cost {s : PanSemStateFiniteExact width σ} {start : MlS} {X : Ctx width}
    (hX : InCtx s X) {B : Nat} (hc : Cost σ X (.call none start []) B) : SrcBoundAt s start B :=
  fun k hg => (hc { s with clock := k } (by exact hX) hg).1

/-- `semantics_terminate_bounded` from a clock bound at the one state `s`. -/
theorem semantics_terminate_bounded_at {s : PanSemStateFiniteExact width σ} {start : MlS}
    {Bm : Nat} (hc : SrcBoundAt s start Bm)
    {outcome : HolOutcome} {events : List HolIoEvent}
    (h : semantics s start = .terminate outcome events) :
    ∃ k t r, evaluateHOLFiniteState { s with clock := k } (.call none start []) = (r, t) ∧
      Good r ∧ events = t.ffi.ioEvents ∧ k ≤ t.clock + Bm ∧
      ((∃ e, r = some (.finalFfi e) ∧ outcome = .ffiOutcome e) ∨
        (∃ v, r = some (.returned v) ∧ outcome = .success)) := by
  obtain ⟨k, t, r, hrun, hg, hev, hout⟩ := semantics_terminate_run h
  have := hc k (by rw [hrun]; exact hg)
  rw [hrun] at this
  exact ⟨k, t, r, hrun, hg, hev, this, hout⟩

open Flapjack.Basis.Pure.MlString in
/-- The challenge run: if `main()` costs at most `Bm` in the run's context `guestCtx`, every
terminating source behaviour is witnessed by a run of `main` from the post-declaration state
that consumes at most `Bm` clock ticks. -/
theorem sourceBehaviour_terminate_bounded (input : Guest.InputBlob) {Bm : Nat}
    (hc : Cost Guest.HostMemory guestCtx (.call none (ofString "main") []) Bm)
    {outcome : HolOutcome} {events : List HolIoEvent}
    (h : InitE.sourceBehaviour input = .terminate outcome events) :
    ∃ s : PanSemStateFiniteExact 64 Guest.HostMemory, InCtx s guestCtx ∧
      InitE.sourceBehaviour input = semantics s (ofString "main") ∧
      ∃ k t r, evaluateHOLFiniteState { s with clock := k } (.call none (ofString "main") []) =
          (r, t) ∧
        Good r ∧ events = t.ffi.ioEvents ∧ k ≤ t.clock + Bm ∧
        ((∃ e, r = some (.finalFfi e) ∧ outcome = .ffiOutcome e) ∨
          (∃ v, r = some (.returned v) ∧ outcome = .success)) := by
  rcases sourceBehaviour_state input with hf | ⟨s, h1, h2, h3, heq⟩
  · rw [hf] at h; cases h
  · have hX := inCtx_guestCtx h1 h2 h3
    rw [heq] at h
    exact ⟨s, hX, heq, semantics_terminate_bounded hX hc h⟩

open Flapjack.Basis.Pure.MlString in
/-- `sourceBehaviour_terminate_bounded` with the bound for `main` read off a sound cost
table for `guestCtx`. -/
theorem sourceBehaviour_terminate_bounded_of_table (input : Guest.InputBlob) {st : TblState}
    (hst : StateSound Guest.HostMemory guestCtx st) {Bm : Nat}
    (hm : st.1.lookup (ofString "main") = some Bm)
    {outcome : HolOutcome} {events : List HolIoEvent}
    (h : InitE.sourceBehaviour input = .terminate outcome events) :
    ∃ s : PanSemStateFiniteExact 64 Guest.HostMemory, InCtx s guestCtx ∧
      InitE.sourceBehaviour input = semantics s (ofString "main") ∧
      ∃ k t r, evaluateHOLFiniteState { s with clock := k } (.call none (ofString "main") []) =
          (r, t) ∧
        Good r ∧ events = t.ffi.ioEvents ∧ k ≤ t.clock + (1 + Bm + 0) ∧
        ((∃ e, r = some (.finalFfi e) ∧ outcome = .ffiOutcome e) ∨
          (∃ v, r = some (.returned v) ∧ outcome = .success)) :=
  sourceBehaviour_terminate_bounded input (cost_call_of_table hst hm []) h

end InitECandidate.Solver.SourceCost

#print axioms InitECandidate.Solver.SourceCost.semantics_terminate_bounded
#print axioms InitECandidate.Solver.SourceCost.sourceBehaviour_terminate_bounded
#print axioms InitECandidate.Solver.SourceCost.sourceBehaviour_terminate_bounded_of_table
#print axioms InitECandidate.Solver.SourceCost.guestCtx_bounded
