import InitECandidate.Proofs.BootstrapTrace
import InitECandidate.Solver.EncoderBound

/-!
# Bounded bootstrap

The baseline bootstrap (`InitECandidate.Proofs.BootstrapTrace.full_evaluator`) reaches
the installed native entry after an existential number of machine steps. The bounded encoder gives a separate bound for each assembler instruction: its emitted
RISC-V instruction count. Summing those counts avoids charging the maximum expansion
to every bootstrap instruction.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Bootstrap
open InitE
open Flapjack Flapjack.RiscV.L3
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.AsmSem
open Flapjack.Compiler.Encoders.AsmProps
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.Semantics.TargetProps
open InitECandidate.Proofs.BootstrapSteps InitECandidate.Proofs.BootstrapCopy
open InitECandidate.Proofs.BootstrapAsmComposition InitECandidate.Proofs.BootstrapTrace
open InitECandidate.Proofs.BootstrapStraightLine
open InitECandidate.Solver.EncoderBound

/-- `checked_trace_evaluator` bounded by the sum of emitted instruction counts. -/
theorem checked_trace_evaluator_bounded {σ : Type}
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
      targetStateRel riscvTarget (run code s) post ∧ count ≤ (code.map fun i => (riscvAst i).length).sum := by
  induction code generalizing s ms with
  | nil =>
    exact ⟨0, ms, fun _ => by simp only [Nat.zero_add], related, Nat.zero_le _⟩
  | cons i rest ih =>
    have interference : interferenceOk mc.nextInterfer (mc.target.proj s.memDomain) := by
      intro index state
      rw [identity]
    obtain ⟨firstCount, middle, firstRun, middleRelated, _, leLength, _⟩ :=
      step_evaluator_le_length mc s ms io i target guards.1 guards.2.1 interference checks.1
        related
    have shiftEq := shiftInterfer_identity mc identity firstCount
    simp only [shiftEq] at firstRun
    obtain ⟨restCount, post, restRun, postRelated, upper⟩ :=
      ih (after s i) checks.2 guards.2.2 middle middleRelated
    refine ⟨firstCount + restCount, post, ?_, postRelated, ?_⟩
    · intro clock
      rw [show firstCount + restCount + clock = (restCount + clock) + firstCount by omega,
        firstRun, restRun]
    · simp only [List.map_cons, List.sum_cons]
      omega

def bootstrapBound : Nat :=
  (fullBootstrapCode.map fun i => (riscvAst i).length).sum

theorem bootstrapBound_eq : bootstrapBound = 23077 := by decide +kernel

/-- The submitted bootstrap reaches the native entry within its emitted instruction count. -/
theorem full_evaluator_bounded {σ : Type} (io : HolFfiState σ) (ms : riscv_state)
    (initial : targetStateRel riscvTarget initialAsm ms) :
    ∃ count post,
      (∀ clock, evaluateTargetHOL baselineMachineConfig io (count + clock) ms =
        evaluateTargetHOL baselineMachineConfig io clock post) ∧
      targetStateRel riscvTarget installedAsm post ∧ count ≤ 23077 := by
  obtain ⟨count, post, shift, relation, bound⟩ :=
    checked_trace_evaluator_bounded baselineMachineConfig rfl rfl fullBootstrapCode initialAsm
      (full_checked_of_tail tail_checked) (full_guards_of_tail tail_guards) ms io initial
  refine ⟨count, post, shift, by rwa [full_endpoint_of_tail tail_checked] at relation, ?_⟩
  have bounded : count ≤ bootstrapBound := by
    unfold bootstrapBound
    exact bound
  simpa only [bootstrapBound_eq] using bounded

#print axioms full_evaluator_bounded

end InitECandidate.Solver.Bootstrap
