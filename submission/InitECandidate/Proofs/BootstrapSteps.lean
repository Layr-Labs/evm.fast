import Flapjack.RiscV.CorrectnessEncoding.Complete
import Flapjack.Compiler.Backend.Semantics.TargetProps.EncoderStepState

/-!
The bootstrap uses the compiler's own assembler semantics and encoder.
These lemmas discharge its machine simulation with the upstream proof of
fetch/decode/execution of the actual encoded bytes. They introduce no machine
semantics or instruction-validity assumptions beyond `asmStep`'s obligations.
-/
namespace InitECandidate.Proofs.BootstrapSteps

open Flapjack Flapjack.RiscV.L3
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.AsmSem
open Flapjack.Compiler.Encoders.AsmProps
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.Semantics.TargetProps

/-- The exact source poststate, including the byte-length-derived fallthrough PC. -/
noncomputable def after (s : AsmState 64) (i : HolAsm 64) : AsmState 64 :=
  asmUpd i (s.pc + BitVec.ofNat 64 (riscvEnc i).length) s

/-- Construct an actual assembler transition from the installed code, fixed
RISC-V configuration, admitted instruction, and its nonfailed poststate. -/
theorem checked_step (s : AsmState 64) (i : HolAsm 64)
    (bytes : bytesInMemoryHOL s.pc (riscvEnc i) s.mem s.memDomain)
    (link : s.lr = 1) (endian : s.be = false) (alignment : s.align = 2)
    (nonfailed : ¬ (after s i).failed)
    (admitted : asmOkExact i riscvConfig = true) :
    asmStep riscvConfig s i (after s i) := by
  exact ⟨bytes, link, endian, alignment, rfl, nonfailed, admitted⟩

/-- Every checked bootstrap instruction runs on the actual L3 RISC-V target.
The result includes validity/PC/code invariants throughout execution, and a
frame for every byte outside the source memory domain. The instruction may
encode to multiple machine instructions. -/
theorem step_simulation (s : AsmState 64) (i : HolAsm 64) (ms : riscv_state)
    (step : asmStep riscvConfig s i (after s i))
    (related : targetStateRel riscvTarget s ms) :
    ∃ n,
      targetStateRel riscvTarget (after s i) (riscvNext^[n] ms) ∧
      (∀ j, j < n →
        (∀ pc, pc ∈ allPcs (riscvEnc i).length s.pc 0 →
          (riscvNext^[j] ms).MEM8 pc = ms.MEM8 pc) ∧
        (riscvNext^[j] ms).c_PC (riscvNext^[j] ms).procID ∈
          allPcs (riscvEnc i).length s.pc 2 ∧
        riscvOk (riscvNext^[j] ms) = true) ∧
      (∀ j x, j ≤ n ∧ ¬ s.memDomain x →
        (riscvNext^[j] ms).MEM8 x = ms.MEM8 x) := by
  exact encoderCorrectAsmStepStateRel riscvTarget s (after s i) ms i
    ⟨Flapjack.RiscV.TargetProof.riscv_encoder_correct, related, step⟩

/-- Finite source bootstrap traces lift to finite machine traces. This covers
both straight-line setup and the bitmap-copy loop once its source trace is
proved; there is no assumed final machine state. -/
theorem trace_simulation (s initial : AsmState 64) (ms : riscv_state)
    (related : targetStateRel riscvTarget s ms)
    (trace : Relation.ReflTransGen
      (fun before after => ∃ i, asmStep riscvConfig before i after) s initial) :
    ∃ n, targetStateRel riscvTarget initial (riscvNext^[n] ms) := by
  exact encoderCorrectRtcAsmStepStateRel riscvTarget s initial ms
    ⟨Flapjack.RiscV.TargetProof.riscv_encoder_correct, related, trace⟩

/-- The compiler's target evaluator also simulates one bootstrap assembly step.
Unlike a raw machine iteration, this retains the evaluator's FFI dispatcher and
its clocks. The caller proves that bootstrap bytes do not occupy FFI entry PCs;
all other assumptions are exactly the upstream evaluator bridge. -/
theorem step_evaluator {σ : Type}
    (mc : MachineConfig 64 riscv_state RiscVProjection)
    (s : AsmState 64) (ms : riscv_state) (io : HolFfiState σ) (i : HolAsm 64)
    (target : mc.target = riscvTarget)
    (domain : mc.progAddresses = s.memDomain)
    (disjoint : ffiEntryPcsDisjoint mc s (riscvEnc i).length)
    (interference : interferenceOk mc.nextInterfer (mc.target.proj s.memDomain))
    (step : asmStep riscvConfig s i (after s i))
    (related : targetStateRel riscvTarget s ms) :
    ∃ l ms2,
      (∀ k, evaluateTargetHOL mc io (k + l) ms =
        evaluateTargetHOL (shiftInterfer l mc) io k ms2) ∧
      targetStateRel riscvTarget (after s i) ms2 ∧ l ≠ 0 := by
  have h := asmStepImpEvaluateOnly mc s ms io i
    ⟨by rw [target]; exact Flapjack.RiscV.TargetProof.riscv_encoder_correct,
      domain, by simpa only [target, riscvTarget, riscvConfig_encode] using disjoint, interference,
      by simpa only [target, riscvTarget, riscvConfig_encode, after] using step, by simpa [target] using related⟩
  simpa only [target, riscvTarget, riscvConfig_encode, after] using h

/-- Constant setup preserves memory and records the fallthrough PC explicitly. -/
theorem after_const (s : AsmState 64) (r : Nat) (value : BitVec 64) :
    after s (.inst (.const r value)) =
      updPc (s.pc + BitVec.ofNat 64 (riscvEnc (.inst (.const r value))).length)
        (updReg r value s) := rfl

/-- Immediate addition setup has the exact word addition used by the compiler. -/
theorem after_add (s : AsmState 64) (dest source : Nat) (value : BitVec 64) :
    after s (.inst (.arith (.binop .add dest source (.imm value)))) =
      updPc (s.pc + BitVec.ofNat 64
        (riscvEnc (.inst (.arith (.binop .add dest source (.imm value))))).length)
        (updReg dest (s.regs source + value) s) := rfl

/-- A final jump reaches its relative target without modifying memory/registers. -/
theorem after_jump (s : AsmState 64) (offset : BitVec 64) :
    after s (.jump offset) = updPc (s.pc + offset) s := rfl

end InitECandidate.Proofs.BootstrapSteps
