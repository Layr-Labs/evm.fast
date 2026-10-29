import InitECandidate.Proofs.BootstrapCopy
import InitECandidate.Proofs.BootstrapComposition

/-! Checked assembler traces compose into an exact target-evaluator clock shift.
The endpoint is the calculation `BootstrapCopy.run code initial`, rather than
an assumed machine execution. Only local code/domain/FFI guards are required. -/
namespace InitECandidate.Proofs.BootstrapAsmComposition
open Flapjack Flapjack.RiscV.L3
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.AsmSem
open Flapjack.Compiler.Encoders.AsmProps
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.Semantics.TargetProps
open InitECandidate.Proofs.BootstrapSteps InitECandidate.Proofs.BootstrapCopy

/-- Static evaluator guards at each calculated assembler state. `Checked`
separately proves that the actual installed bytes admit each assembler step. -/
noncomputable def EvaluatorGuards
    (mc : MachineConfig 64 riscv_state RiscVProjection) :
    List (HolAsm 64) → AsmState 64 → Prop
  | [], _ => True
  | i :: rest, s => mc.progAddresses = s.memDomain ∧
      ffiEntryPcsDisjoint mc s (riscvEnc i).length ∧
      EvaluatorGuards mc rest (after s i)

/-- Only the ordinary-instruction interference oracle is shifted upstream.
FFI and cache callbacks need no additional constancy premise. -/
theorem shiftInterfer_identity
    (mc : MachineConfig 64 riscv_state RiscVProjection)
    (identity : mc.nextInterfer = fun _ state => state) (count : Nat) :
    shiftInterfer count mc = mc := by
  have shifted : holShiftSeq count mc.nextInterfer = mc.nextInterfer := by
    rw [identity]
    rfl
  simp only [shiftInterfer, shifted]

/-- A locally checked instruction list reaches a machine related to its
calculated assembler endpoint, and removes a finite quiet evaluator prefix.
The result holds for the same arbitrary FFI state on both sides. -/
theorem checked_trace_evaluator {σ : Type}
    (mc : MachineConfig 64 riscv_state RiscVProjection)
    (target : mc.target = riscvTarget)
    (identity : mc.nextInterfer = fun _ state => state)
    (code : List (HolAsm 64)) (s : AsmState 64)
    (checks : Checked code s) (guards : EvaluatorGuards mc code s)
    (ms : riscv_state) (io : HolFfiState σ)
    (related : targetStateRel riscvTarget s ms) :
    ∃ count post,
      (∀ clock, evaluateTargetHOL mc io (count + clock) ms =
        evaluateTargetHOL mc io clock post) ∧
      targetStateRel riscvTarget (run code s) post ∧ code.length ≤ count := by
  induction code generalizing s ms with
  | nil =>
    exact ⟨0, ms, fun _ => by simp only [Nat.zero_add], related, Nat.zero_le _⟩
  | cons i rest ih =>
    have interference : interferenceOk mc.nextInterfer (mc.target.proj s.memDomain) := by
      intro index state
      rw [identity]
    obtain ⟨firstCount, middle, firstRun, middleRelated, positive⟩ :=
      step_evaluator mc s ms io i target guards.1 guards.2.1 interference checks.1 related
    have shiftEq := shiftInterfer_identity mc identity firstCount
    simp only [shiftEq] at firstRun
    obtain ⟨restCount, post, restRun, postRelated, lowerBound⟩ :=
      ih (after s i) checks.2 guards.2.2 middle middleRelated
    refine ⟨firstCount + restCount, post, ?_, postRelated, ?_⟩
    · intro clock
      rw [show firstCount + restCount + clock = (restCount + clock) + firstCount by omega,
        firstRun, restRun]
    · simp only [List.length_cons]
      omega

/-- Compiler properties at the computed assembler endpoint transfer to the
submitted bootstrap entry state. No final machine run is assumed. -/
theorem checked_trace_behavior_property {σ : Type}
    (mc : MachineConfig 64 riscv_state RiscVProjection)
    (target : mc.target = riscvTarget)
    (identity : mc.nextInterfer = fun _ state => state)
    (code : List (HolAsm 64)) (s : AsmState 64)
    (checks : Checked code s) (guards : EvaluatorGuards mc code s)
    (ms : riscv_state) (io : HolFfiState σ)
    (related : targetStateRel riscvTarget s ms)
    (property : HolBehaviour → Prop)
    (postProperty : ∀ post, targetStateRel riscvTarget (run code s) post →
      ∀ behavior, machineSemHOL mc io post behavior → property behavior) :
    ∀ behavior, machineSemHOL mc io ms behavior → property behavior := by
  obtain ⟨count, post, shift, postRelated, _⟩ :=
    checked_trace_evaluator mc target identity code s checks guards ms io related
  exact InitE.Bootstrap.behavior_property_from_clock_shift io shift property
    (postProperty post postRelated)

end InitECandidate.Proofs.BootstrapAsmComposition
