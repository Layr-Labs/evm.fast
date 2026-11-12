import InitECandidate.Solver.EncoderBound.Defs
import InitECandidate.Solver.EncoderBound.Basic
import InitECandidate.Solver.EncoderBound.Shift
import InitECandidate.Solver.EncoderBound.Jump
import InitECandidate.Solver.EncoderBound.JumpCmp
import InitECandidate.Solver.EncoderBound.Evaluate

/-!
# Bounded RISC-V encoder correctness

`riscv_encoder_correct_bounded` is Flapjack's `riscv_encoder_correct`
(`Flapjack/RiscV/CorrectnessEncoding/Complete.lean`) with the step witness of every
constructor case bounded by `riscvStepBound i = (riscvAst i).length - 1`, i.e. each
ASM instruction is simulated by at most `(riscvAst i).length ≤ 6` machine steps.
The per-case proofs in `EncoderBound/*.lean` are Flapjack's proofs restated with the
bound conjunct; Flapjack helper lemmas are reused by import (`open private`).

`step_evaluator_bounded` is the bounded counterpart of
`InitECandidate.Proofs.BootstrapSteps.step_evaluator`: the evaluator clock advance
`l` of one bootstrap assembly step satisfies `l ≤ riscvStepBound i + 1`.
-/

namespace InitECandidate.Solver.EncoderBound

open Flapjack Flapjack.RiscV.L3 Flapjack.Compiler.Encoders.Asm
  Flapjack.Compiler.Encoders.AsmSem Flapjack.Compiler.Encoders.AsmProps
  Flapjack.Compiler.Encoders.RiscV.Target Flapjack.Compiler.Backend.Semantics.TargetProps
  Flapjack.RiscV.TargetProof

set_option autoImplicit false

/-- Flapjack's `riscv_encoder_correct` with every step witness bounded by `riscvStepBound`. -/
theorem riscv_encoder_correct_bounded : encoderCorrectBounded riscvTarget riscvStepBound := by
  refine ⟨riscv_target_ok, ?_⟩
  intro s1 i s2 ms h
  cases i with
  | inst value =>
    cases value with
    | skip => exact riscv_encoder_correct_skip_bounded s1 s2 ms h
    | const r c => exact riscv_encoder_correct_const_bounded r c s1 s2 ms h
    | arith a =>
      cases a with
      | binop op r t right => exact riscv_encoder_correct_binop_bounded op r t right s1 s2 ms h
      | shift op r t right => exact riscv_encoder_correct_shift_bounded op r t right s1 s2 ms h
      | div r t u => exact riscv_encoder_correct_div_bounded r t u s1 s2 ms h
      | longMul r t u v => exact riscv_encoder_correct_longmul_bounded r t u v s1 s2 ms h
      | longDiv r t u v q => exact riscv_encoder_correct_longdiv_bounded r t u v q s1 s2 ms h
      | addCarry r t u v => exact riscv_encoder_correct_addcarry_bounded r t u v s1 s2 ms h
      | addOverflow r t u v => exact riscv_encoder_correct_addoverflow_bounded r t u v s1 s2 ms h
      | subOverflow r t u v => exact riscv_encoder_correct_suboverflow_bounded r t u v s1 s2 ms h
    | mem m r address =>
      cases address with
      | addr base w => exact riscv_encoder_correct_mem_bounded m r base w s1 s2 ms h
  | jump c => exact riscv_encoder_correct_jump_bounded c s1 s2 ms h
  | jumpCmp c r right a => exact riscv_encoder_correct_jumpCmp_bounded c r right a s1 s2 ms h
  | call c => exact riscv_encoder_correct_call_bounded c s1 s2 ms h
  | jumpReg r => exact riscv_encoder_correct_jumpReg_bounded r s1 s2 ms h
  | loc r c => exact riscv_encoder_correct_loc_bounded r c s1 s2 ms h

/-- Sanity check: the bounded theorem implies Flapjack's original statement. -/
theorem riscv_encoder_correct' : encoderCorrect riscvTarget :=
  encoderCorrect_of_bounded riscv_encoder_correct_bounded

/-- The uniform literal bound `5` (at most six machine steps per ASM instruction). -/
theorem riscv_encoder_correct_bounded_five : encoderCorrectBounded riscvTarget (fun _ => 5) :=
  encoderCorrectBounded_mono riscv_encoder_correct_bounded riscvStepBound_le_five

/-- Bounded counterpart of `InitECandidate.Proofs.BootstrapSteps.step_evaluator`
(same hypotheses; its `after s i` is unfolded here). The evaluator clock advance
satisfies `0 < l ≤ riscvStepBound i + 1 = (riscvAst i).length ≤ 6`. -/
theorem step_evaluator_bounded {σ : Type}
    (mc : MachineConfig 64 riscv_state RiscVProjection)
    (s : AsmState 64) (ms : riscv_state) (io : HolFfiState σ) (i : HolAsm 64)
    (target : mc.target = riscvTarget)
    (domain : mc.progAddresses = s.memDomain)
    (disjoint : ffiEntryPcsDisjoint mc s (riscvEnc i).length)
    (interference : interferenceOk mc.nextInterfer (mc.target.proj s.memDomain))
    (step : asmStep riscvConfig s i
      (asmUpd i (s.pc + BitVec.ofNat 64 (riscvEnc i).length) s))
    (related : targetStateRel riscvTarget s ms) :
    ∃ l ms2,
      (∀ k, evaluateTargetHOL mc io (k + l) ms =
        evaluateTargetHOL (shiftInterfer l mc) io k ms2) ∧
      targetStateRel riscvTarget
        (asmUpd i (s.pc + BitVec.ofNat 64 (riscvEnc i).length) s) ms2 ∧
      l ≠ 0 ∧ l ≤ riscvStepBound i + 1 := by
  have h := asmStepImpEvaluateOnly_bounded mc riscvStepBound s ms io i
    ⟨by rw [target]; exact riscv_encoder_correct_bounded,
      domain, by simpa only [target, riscvTarget, riscvConfig_encode] using disjoint, interference,
      by simpa only [target, riscvTarget, riscvConfig_encode] using step,
      by simpa [target] using related⟩
  simpa only [target, riscvTarget, riscvConfig_encode] using h

/-- `step_evaluator_bounded` with the clock advance stated against the emitted
instruction count and the uniform literal `6`. -/
theorem step_evaluator_le_length {σ : Type}
    (mc : MachineConfig 64 riscv_state RiscVProjection)
    (s : AsmState 64) (ms : riscv_state) (io : HolFfiState σ) (i : HolAsm 64)
    (target : mc.target = riscvTarget)
    (domain : mc.progAddresses = s.memDomain)
    (disjoint : ffiEntryPcsDisjoint mc s (riscvEnc i).length)
    (interference : interferenceOk mc.nextInterfer (mc.target.proj s.memDomain))
    (step : asmStep riscvConfig s i
      (asmUpd i (s.pc + BitVec.ofNat 64 (riscvEnc i).length) s))
    (related : targetStateRel riscvTarget s ms) :
    ∃ l ms2,
      (∀ k, evaluateTargetHOL mc io (k + l) ms =
        evaluateTargetHOL (shiftInterfer l mc) io k ms2) ∧
      targetStateRel riscvTarget
        (asmUpd i (s.pc + BitVec.ofNat 64 (riscvEnc i).length) s) ms2 ∧
      l ≠ 0 ∧ l ≤ (riscvAst i).length ∧ l ≤ 6 := by
  obtain ⟨l, ms2, run, rel, ne, le⟩ :=
    step_evaluator_bounded mc s ms io i target domain disjoint interference step related
  have e := riscvStepBound_add_one i
  have six := riscvAst_length_le_six i
  exact ⟨l, ms2, run, rel, ne, by omega, by omega⟩

end InitECandidate.Solver.EncoderBound

#print axioms InitECandidate.Solver.EncoderBound.riscv_encoder_correct_bounded
#print axioms InitECandidate.Solver.EncoderBound.encoderCorrect_of_bounded
#print axioms InitECandidate.Solver.EncoderBound.riscv_encoder_correct_bounded_five
#print axioms InitECandidate.Solver.EncoderBound.asmStepImpEvaluate_bounded
#print axioms InitECandidate.Solver.EncoderBound.asmStepImpEvaluateOnly_bounded
#print axioms InitECandidate.Solver.EncoderBound.step_evaluator_bounded
#print axioms InitECandidate.Solver.EncoderBound.step_evaluator_le_length
