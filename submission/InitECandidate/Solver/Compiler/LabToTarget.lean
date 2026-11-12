import InitECandidate.Solver.EncoderBound
import InitECandidate.Solver.Compiler.LabToTarget.MachineSemantics

/-!
# Bounded lab → target pass

Bounded counterparts of Flapjack's lab-to-target simulation (pinned flapjack rev
034bb5a1ed0b757082768d5406206bd2f8e31b7c):

* `compileCorrect_bounded` (`LabToTarget/Assembly.lean`): Flapjack's `compileCorrect`
  with `encoderCorrectBounded mc.target bound` and `StepCostOk bound q L mc code2`; the
  target run is `k + e` evaluator steps with
  `k ≤ (L / q + 1) * (s1.clock - s2.clock) + L / q` (residual `e = 0` for `TimeOut`,
  any `e ≠ 0` for `Halt`).
* `compileCorrect_bounded_halt`, `labHalt_target_bounded`, `machineSemEqSem_bounded`,
  `makeInit_labHalt_target_bounded` (`LabToTarget/MachineSemantics.lean`): consumer forms;
  a halting lab run gives a halting target run within
  `(L / q + 1) * (lab clock consumed) + L / q + 1` steps.

Constants: `L / q` bounds the machine steps of one target line (instruction plus NOP
padding: at most `L` bytes, at least `q` bytes per machine step); one more step per source
instruction covers the FFI-entry transition of a returning `CallFFI` (the `Install` case is
excluded by hypothesis). For RISC-V `q = 4`, `bound = riscvStepBound`, and with lines of at
most `24` bytes (six instructions) the bound is `7 * (lab clock consumed) + 7`.

This module adds the RISC-V instances.
-/

namespace InitECandidate.Solver.Compiler.LabToTarget

open Flapjack Flapjack.RiscV.L3 Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.AsmProps Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.LabSem Flapjack.Compiler.Backend.Semantics.TargetProps
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.LabToTarget
open Flapjack.Compiler.Backend.LabProps
open InitECandidate.Solver.EncoderBound

set_option autoImplicit false

/-- RISC-V: every encoded instruction has exactly four bytes per machine step. -/
theorem riscv_bytes_per_step (mc : MachineConfig 64 riscv_state RiscVProjection)
    (target : mc.target = riscvTarget) (i : HolAsm 64) :
    4 * (riscvStepBound i + 1) ≤ (mc.target.config.encode i).length := by
  rw [target]
  exact Nat.le_of_eq (riscvStepBound_add_one_mul_four i)

/-- RISC-V instance of `labHalt_target_bounded`: with target lines of at most `L` bytes,
a lab run that halts after consuming `clock - s'.clock` source clock is matched by a halting
target run within `(L / 4 + 1) * (clock - s'.clock) + L / 4 + 1` evaluator steps. -/
theorem riscv_labHalt_target_bounded {F : Type} (L : Nat)
    (mc : MachineConfig 64 riscv_state RiscVProjection) (target : mc.target = riscvTarget)
    (p : BitVec 64) (ms : riscv_state)
    (s : LabSem.State 64 Config F) (code2 : LabProgHOL 64) (labs : Spt (Spt Nat))
    (t1 : AsmState 64)
    (hrel : stateRel (mc, code2, labs, p) s t1 ms) (htie : oracleTie mc ms s)
    (hni : noInstall s.code) (hL : LinesBounded L code2)
    (clock : Nat) (outcome : HolOutcome) (s' : LabSem.State 64 Config F)
    (hev : evaluate { s with clock := clock } = (.halt outcome, s')) :
    ∃ (N : Nat) (ms' : riscv_state), N ≤ (L / 4 + 1) * (clock - s'.clock) + L / 4 + 1 ∧
      ∀ N', N ≤ N' → evaluateTargetHOL mc s.ffi N' ms = (.halt outcome, ms', s'.ffi) :=
  labHalt_target_bounded riscvStepBound 4 L mc p ms s code2 labs t1
    (by rw [target]; exact riscv_encoder_correct_bounded) hrel htie (by decide)
    (riscv_bytes_per_step mc target) hni hL clock outcome s' hev

/-- RISC-V with target lines of at most 24 bytes (six machine instructions):
at most `7 * (lab clock consumed) + 7` evaluator steps. -/
theorem riscv_labHalt_target_bounded_24 {F : Type}
    (mc : MachineConfig 64 riscv_state RiscVProjection) (target : mc.target = riscvTarget)
    (p : BitVec 64) (ms : riscv_state)
    (s : LabSem.State 64 Config F) (code2 : LabProgHOL 64) (labs : Spt (Spt Nat))
    (t1 : AsmState 64)
    (hrel : stateRel (mc, code2, labs, p) s t1 ms) (htie : oracleTie mc ms s)
    (hni : noInstall s.code) (hL : LinesBounded 24 code2)
    (clock : Nat) (outcome : HolOutcome) (s' : LabSem.State 64 Config F)
    (hev : evaluate { s with clock := clock } = (.halt outcome, s')) :
    ∃ (N : Nat) (ms' : riscv_state), N ≤ 7 * (clock - s'.clock) + 7 ∧
      ∀ N', N ≤ N' → evaluateTargetHOL mc s.ffi N' ms = (.halt outcome, ms', s'.ffi) :=
  riscv_labHalt_target_bounded 24 mc target p ms s code2 labs t1 hrel htie hni hL clock
    outcome s' hev

end InitECandidate.Solver.Compiler.LabToTarget

#print axioms InitECandidate.Solver.Compiler.LabToTarget.compileCorrect_bounded
#print axioms InitECandidate.Solver.Compiler.LabToTarget.compileCorrect_bounded_halt
#print axioms InitECandidate.Solver.Compiler.LabToTarget.compileCorrectForB_all
#print axioms InitECandidate.Solver.Compiler.LabToTarget.labHalt_target_bounded
#print axioms InitECandidate.Solver.Compiler.LabToTarget.machineSemEqSem_bounded
#print axioms InitECandidate.Solver.Compiler.LabToTarget.makeInit_labHalt_target_bounded
#print axioms InitECandidate.Solver.Compiler.LabToTarget.posStepBounded_of_linesBounded
#print axioms InitECandidate.Solver.Compiler.LabToTarget.linesBounded_of_linesBoundedB
#print axioms InitECandidate.Solver.Compiler.LabToTarget.riscv_labHalt_target_bounded
#print axioms InitECandidate.Solver.Compiler.LabToTarget.riscv_labHalt_target_bounded_24
