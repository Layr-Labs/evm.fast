import InitECandidate.Solver.Improvements.CompilerSharp.MachineSemantics
import InitECandidate.Solver.EncoderBound

/-! RISC-V instance of the sharper line rule. The jump used by a returning
CallFFI has at most two emitted instructions, so its external transition fits
inside the ordinary six-instruction budget. This does not reduce the actual
24-byte maximum line length. Draft until full serialized proof replay. -/
namespace InitECandidate.Solver.Improvements.CompilerSharp
open Flapjack Flapjack.RiscV.L3 Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.AsmProps Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.LabSem Flapjack.Compiler.Backend.Semantics.TargetProps
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.LabToTarget
open Flapjack.Compiler.Backend.LabProps
open InitECandidate.Solver.EncoderBound
set_option autoImplicit false

/-- The isolated generic proposition is exactly the accepted one. -/
theorem bounded_encoder_agrees {width : Nat} [NeZero width] {β γ : Type}
    (t : HolAsmTarget width β γ) (bound : HolAsm width → Nat) :
    encoderCorrectBounded t bound =
      InitECandidate.Solver.EncoderBound.encoderCorrectBounded t bound := rfl

/-- The actual accepted encoder proof, transported by definitional equality.
No replacement assumption or hypothetical concrete encoder is used. -/
theorem riscv_encoder_generic : encoderCorrectBounded riscvTarget riscvStepBound := by
  exact InitECandidate.Solver.EncoderBound.riscv_encoder_correct_bounded

/-- Exact emitted-byte allowance, instantiated only at the real RISC-V target. -/
theorem riscv_bytes_per_step (mc : MachineConfig 64 riscv_state RiscVProjection)
    (target : mc.target = riscvTarget) (i : HolAsm 64) :
    4 * (riscvStepBound i + 1) ≤ (mc.target.config.encode i).length := by
  rw [target]
  exact Nat.le_of_eq (riscvStepBound_add_one_mul_four i)

theorem riscv_jump_step_bound (offset : BitVec 64) :
    riscvStepBound (.jump offset) + 1 ≤ 2 := by
  rw [riscvStepBound_add_one]
  simp only [riscvAst]
  split <;> simp

theorem sharp24 : SharpCost riscvStepBound 4 24 := by
  refine ⟨by decide, fun offset => ?_⟩
  have h := riscv_jump_step_bound offset
  change riscvStepBound (.jump offset) + 2 ≤ 6
  omega

#print axioms bounded_encoder_agrees
#print axioms riscv_encoder_generic
#print axioms sharp24
end InitECandidate.Solver.Improvements.CompilerSharp
