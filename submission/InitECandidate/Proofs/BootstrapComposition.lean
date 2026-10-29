import Flapjack.Compiler.Backend.Semantics.TargetSem.MachineSem
import Flapjack.Compiler.Backend.Semantics.TargetProps.EvaluateAddClock
import Flapjack.Compiler.Backend.Semantics.TargetProps.EvaluateAddClockIoEventsMono

/-! Finite bootstrap composition for the exact target evaluator. A prefix consists
of successful ordinary instructions and performs no FFI calls. The identity
interference oracle keeps the machine configuration unchanged across the prefix. -/
namespace InitE.Bootstrap
open Flapjack

variable {width : Nat} [NeZero width] {State Projection : Type}

/-- Every guard checked by one ordinary target instruction. Writable ordinary
RAM belongs to `progAddresses`; input/output shared memory is handled through FFI. -/
structure OrdinaryStep (mc : MachineConfig width State Projection) (before : State) : Prop where
  program : mc.progAddresses (mc.target.getPc before)
  nonFfi : mc.target.getPc before ∉ mc.ffiEntryPcs
  encoded : encodedBytesInMemHOL mc.target.config (mc.target.getPc before)
    (mc.target.getByte before) mc.progAddresses
  beforeOk : mc.target.stateOk before = true
  afterOk : mc.target.stateOk (mc.target.next before) = true
  outside : ∀ address, ¬ mc.progAddresses address →
    mc.target.getByte (mc.target.next before) address = mc.target.getByte before address

/-- An ordinary prefix reaches its final state after exactly `count` instructions. -/
inductive OrdinaryPrefix (mc : MachineConfig width State Projection) : Nat → State → State → Prop
  | nil (state : State) : OrdinaryPrefix mc 0 state state
  | cons {count : Nat} {before after : State} (step : OrdinaryStep mc before)
      (tail : OrdinaryPrefix mc count (mc.target.next before) after) :
      OrdinaryPrefix mc (count + 1) before after

variable {mc : MachineConfig width State Projection}
  (identity : mc.nextInterfer = fun _ state => state)
include identity

theorem ordinary_step_evaluate {σ : Type} (ffi : HolFfiState σ) (clock : Nat)
    {before : State} (step : OrdinaryStep mc before) :
    evaluateTargetHOL mc ffi (clock + 1) before =
      evaluateTargetHOL mc ffi clock (mc.target.next before) := by
  classical
  have hshift : holShiftSeq 1 mc.nextInterfer = mc.nextInterfer := by rw [identity]; rfl
  have hnext : mc.nextInterfer 0 (mc.target.next before) = mc.target.next before := by
    rw [identity]
  have hprogram : mc.progAddresses (mc.target.getPc before) ∧
      mc.target.getPc before ∉ mc.ffiEntryPcs := ⟨step.program, step.nonFfi⟩
  have hok : mc.target.stateOk before = true ∧
      mc.target.stateOk (mc.target.next before) = true ∧
      mc.target.stateOk (mc.target.next before) = true ∧
      (∀ x, ¬ mc.progAddresses x →
        mc.target.getByte (mc.target.next before) x = mc.target.getByte before x) :=
    ⟨step.beforeOk, step.afterOk, step.afterOk, step.outside⟩
  simp only [evaluateTargetHOL, if_pos hprogram,
    if_pos step.encoded, applyOracleHOL, hshift, hnext]
  simp only [if_pos hok]

theorem prefix_evaluate {σ : Type} (ffi : HolFfiState σ)
    {count : Nat} {before after : State} (runPrefix : OrdinaryPrefix mc count before after)
    (clock : Nat) :
    evaluateTargetHOL mc ffi (count + clock) before = evaluateTargetHOL mc ffi clock after := by
  induction runPrefix with
  | nil state => simp
  | @cons count before after step tail ih =>
    rw [show count + 1 + clock = (count + clock) + 1 by omega,
      ordinary_step_evaluate identity ffi (count + clock) step]
    exact ih

theorem prefix_short_clock {σ : Type} (ffi : HolFfiState σ)
    {count : Nat} {before after : State} (runPrefix : OrdinaryPrefix mc count before after)
    (clock : Nat) (short : clock ≤ count) :
    ∃ middle, evaluateTargetHOL mc ffi clock before = (.timeOut, middle, ffi) := by
  induction runPrefix generalizing clock with
  | nil state =>
    have : clock = 0 := by omega
    subst clock
    exact ⟨state, rfl⟩
  | @cons count before after step tail ih =>
    cases clock with
    | zero => exact ⟨before, rfl⟩
    | succ clock =>
      rw [ordinary_step_evaluate identity ffi clock step]
      exact ih clock (by omega)

/-- Adding an ordinary prefix preserves every observable behavior, including
failure and the complete lazy trace of divergence. -/
theorem machine_behavior_iff {σ : Type} (ffi : HolFfiState σ)
    {count : Nat} {before after : State} (runPrefix : OrdinaryPrefix mc count before after)
    (behavior : HolBehaviour) :
    machineSemHOL mc ffi before behavior ↔ machineSemHOL mc ffi after behavior := by
  have hlong := prefix_evaluate identity ffi runPrefix
  have hshort := prefix_short_clock identity ffi runPrefix
  have hresult (clock : Nat) (large : count ≤ clock) :
      evaluateTargetHOL mc ffi clock before = evaluateTargetHOL mc ffi (clock - count) after := by
    rw [← hlong (clock - count)]
    congr 1
    omega
  cases behavior with
  | terminate outcome events =>
    constructor
    · rintro ⟨clock, final, ffi', hrun, hevents⟩
      have large : count ≤ clock := by
        by_cases large : count ≤ clock
        · exact large
        · obtain ⟨middle, htimeout⟩ := hshort clock (by omega)
          rw [htimeout] at hrun
          cases hrun
      exact ⟨clock - count, final, ffi', (hresult clock large).symm.trans hrun, hevents⟩
    · rintro ⟨clock, final, ffi', hrun, hevents⟩
      exact ⟨count + clock, final, ffi', (hlong clock).trans hrun, hevents⟩
  | fail =>
    constructor
    · rintro ⟨clock, hrun⟩
      have large : count ≤ clock := by
        by_cases large : count ≤ clock
        · exact large
        · obtain ⟨middle, htimeout⟩ := hshort clock (by omega)
          rw [htimeout] at hrun
          cases hrun
      exact ⟨clock - count, by rw [← hresult clock large]; exact hrun⟩
    · rintro ⟨clock, hrun⟩
      exact ⟨count + clock, by rw [hlong clock]; exact hrun⟩
  | diverge trace =>
    have hfamilies :
        (fun ll => ∃ clock : Nat,
          HolLList.fromList (evaluateTargetHOL mc ffi clock before).2.2.ioEvents = ll) =
        (fun ll => ∃ clock : Nat,
          HolLList.fromList (evaluateTargetHOL mc ffi clock after).2.2.ioEvents = ll) := by
      funext ll
      apply propext
      constructor
      · rintro ⟨clock, hevents⟩
        by_cases large : count ≤ clock
        · exact ⟨clock - count, by rw [← hresult clock large]; exact hevents⟩
        · obtain ⟨middle, htimeout⟩ := hshort clock (by omega)
          exact ⟨0, by simpa only [htimeout, evaluateTargetHOL] using hevents⟩
      · rintro ⟨clock, hevents⟩
        exact ⟨count + clock, by rw [hlong clock]; exact hevents⟩
    constructor
    · rintro ⟨htimeout, hlub⟩
      refine ⟨?_, ?_⟩
      · intro clock
        obtain ⟨final, ffi', hrun⟩ := htimeout (count + clock)
        exact ⟨final, ffi', (hlong clock).symm.trans hrun⟩
      · rw [← hfamilies]
        exact hlub
    · rintro ⟨htimeout, hlub⟩
      refine ⟨?_, ?_⟩
      · intro clock
        by_cases large : count ≤ clock
        · obtain ⟨final, ffi', hrun⟩ := htimeout (clock - count)
          exact ⟨final, ffi', (hresult clock large).trans hrun⟩
        · obtain ⟨middle, hrun⟩ := hshort clock (by omega)
          exact ⟨middle, ffi, hrun⟩
      · rw [hfamilies]
        exact hlub

/-- Every post-bootstrap behavior property applies to the complete submitted code. -/
theorem behavior_property_from_bootstrap {σ : Type} (ffi : HolFfiState σ)
    {count : Nat} {before after : State} (runPrefix : OrdinaryPrefix mc count before after)
    (property : HolBehaviour → Prop)
    (post : ∀ behavior, machineSemHOL mc ffi after behavior → property behavior) :
    ∀ behavior, machineSemHOL mc ffi before behavior → property behavior :=
  fun behavior boot => post behavior ((machine_behavior_iff identity ffi runPrefix behavior).mp boot)

/-- A terminating post-bootstrap execution also terminates from the bootstrap PC. -/
theorem termination_from_bootstrap {σ : Type} (ffi : HolFfiState σ)
    {count : Nat} {before after : State} (runPrefix : OrdinaryPrefix mc count before after)
    (outcome : HolOutcome) (events : List HolIoEvent)
    (post : machineSemHOL mc ffi after (.terminate outcome events)) :
    machineSemHOL mc ffi before (.terminate outcome events) :=
  (machine_behavior_iff identity ffi runPrefix _).mpr post

omit identity in
/-- The evaluator clock-shift equation is enough to preserve all behaviors.
This is the direct interface to `asmStepImpEvaluateOnly`, after its shifted
configuration has been shown equal to the original configuration. -/
theorem clock_shift_behavior_iff {σ : Type} (ffi : HolFfiState σ)
    {count : Nat} {before after : State}
    (hlong : ∀ clock, evaluateTargetHOL mc ffi (count + clock) before =
      evaluateTargetHOL mc ffi clock after) (behavior : HolBehaviour) :
    machineSemHOL mc ffi before behavior ↔ machineSemHOL mc ffi after behavior := by
  classical
  have hcount : evaluateTargetHOL mc ffi count before = (.timeOut, after, ffi) := by
    simpa only [Nat.add_zero, evaluateTargetHOL] using hlong 0
  have hshort (clock : Nat) (short : clock ≤ count) :
      ∃ middle ffiMiddle, evaluateTargetHOL mc ffi clock before =
        (.timeOut, middle, ffiMiddle) ∧ ffiMiddle.ioEvents = ffi.ioEvents := by
    let run := evaluateTargetHOL mc ffi clock before
    have hrun : evaluateTargetHOL mc ffi clock before = (run.1, run.2.1, run.2.2) := rfl
    have ht : run.1 = .timeOut := by
      by_cases ht : run.1 = .timeOut
      · exact ht
      · have stable := evaluateTargetAddClock mc ffi clock before (count - clock)
          run.1 run.2.1 run.2.2 hrun ht
        rw [show clock + (count - clock) = count by omega, hcount] at stable
        exact False.elim (ht (congrArg Prod.fst stable).symm)
    have hlo := evaluateTargetIoEventsMono mc ffi clock before
    have hhi := evaluateTargetAddClockIoEventsMono mc ffi clock before count short
    rw [hcount] at hhi
    refine ⟨run.2.1, run.2.2, ?_, ?_⟩
    · simpa only [ht] using hrun
    · exact hhi.eq_of_length_le hlo.length_le
  have hresult (clock : Nat) (large : count ≤ clock) :
      evaluateTargetHOL mc ffi clock before = evaluateTargetHOL mc ffi (clock - count) after := by
    rw [← hlong (clock - count)]
    congr 1
    omega
  cases behavior with
  | terminate outcome events =>
    constructor
    · rintro ⟨clock, final, ffi', hrun, hevents⟩
      have large : count ≤ clock := by
        by_cases large : count ≤ clock
        · exact large
        · obtain ⟨middle, ffiMiddle, htimeout, heqEvents⟩ := hshort clock (by omega)
          rw [htimeout] at hrun
          cases hrun
      exact ⟨clock - count, final, ffi', (hresult clock large).symm.trans hrun, hevents⟩
    · rintro ⟨clock, final, ffi', hrun, hevents⟩
      exact ⟨count + clock, final, ffi', (hlong clock).trans hrun, hevents⟩
  | fail =>
    constructor
    · rintro ⟨clock, hrun⟩
      have large : count ≤ clock := by
        by_cases large : count ≤ clock
        · exact large
        · obtain ⟨middle, ffiMiddle, htimeout, heqEvents⟩ := hshort clock (by omega)
          rw [htimeout] at hrun
          cases hrun
      exact ⟨clock - count, by rw [← hresult clock large]; exact hrun⟩
    · rintro ⟨clock, hrun⟩
      exact ⟨count + clock, by rw [hlong clock]; exact hrun⟩
  | diverge trace =>
    have hfamilies :
        (fun ll => ∃ clock : Nat,
          HolLList.fromList (evaluateTargetHOL mc ffi clock before).2.2.ioEvents = ll) =
        (fun ll => ∃ clock : Nat,
          HolLList.fromList (evaluateTargetHOL mc ffi clock after).2.2.ioEvents = ll) := by
      funext ll
      apply propext
      constructor
      · rintro ⟨clock, hevents⟩
        by_cases large : count ≤ clock
        · exact ⟨clock - count, by rw [← hresult clock large]; exact hevents⟩
        · obtain ⟨middle, ffiMiddle, htimeout, heqEvents⟩ := hshort clock (by omega)
          exact ⟨0, by simpa only [htimeout, evaluateTargetHOL, heqEvents] using hevents⟩
      · rintro ⟨clock, hevents⟩
        exact ⟨count + clock, by rw [hlong clock]; exact hevents⟩
    constructor
    · rintro ⟨htimeout, hlub⟩
      refine ⟨?_, ?_⟩
      · intro clock
        obtain ⟨final, ffi', hrun⟩ := htimeout (count + clock)
        exact ⟨final, ffi', (hlong clock).symm.trans hrun⟩
      · rw [← hfamilies]
        exact hlub
    · rintro ⟨htimeout, hlub⟩
      refine ⟨?_, ?_⟩
      · intro clock
        by_cases large : count ≤ clock
        · obtain ⟨final, ffi', hrun⟩ := htimeout (clock - count)
          exact ⟨final, ffi', (hresult clock large).trans hrun⟩
        · obtain ⟨middle, ffiMiddle, hrun, _⟩ := hshort clock (by omega)
          exact ⟨middle, ffiMiddle, hrun⟩
      · rw [hfamilies]
        exact hlub


omit identity in
/-- Transfer an arbitrary behavior property using a quiet evaluator chunk. -/
theorem behavior_property_from_clock_shift {σ : Type} (ffi : HolFfiState σ)
    {count : Nat} {before after : State}
    (shift : ∀ clock, evaluateTargetHOL mc ffi (count + clock) before =
      evaluateTargetHOL mc ffi clock after)
    (property : HolBehaviour → Prop)
    (post : ∀ behavior, machineSemHOL mc ffi after behavior → property behavior) :
    ∀ behavior, machineSemHOL mc ffi before behavior → property behavior :=
  fun behavior boot => post behavior ((clock_shift_behavior_iff ffi shift behavior).mp boot)

omit identity in
/-- A terminating post-bootstrap execution also terminates before a quiet chunk. -/
theorem termination_from_clock_shift {σ : Type} (ffi : HolFfiState σ)
    {count : Nat} {before after : State}
    (shift : ∀ clock, evaluateTargetHOL mc ffi (count + clock) before =
      evaluateTargetHOL mc ffi clock after)
    (outcome : HolOutcome) (events : List HolIoEvent)
    (post : machineSemHOL mc ffi after (.terminate outcome events)) :
    machineSemHOL mc ffi before (.terminate outcome events) :=
  (clock_shift_behavior_iff ffi shift _).mpr post

end InitE.Bootstrap
