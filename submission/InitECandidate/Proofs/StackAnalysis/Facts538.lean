import InitECandidate.Proofs.StackAnalysis.Data538
import InitECandidate.Proofs.StackAnalysis.Entries
import Lean
import Flapjack.RiscV.NativeSource
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.StackAnalysis
def frame538 : Nat := 0
def slim538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame538_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized538.2.1 optimized538.2.2 = frame538 := by cbv
theorem slim538_eq : WordDepth.Executable.slim optimized538.2.2 = slim538 := by cbv
theorem frameEntry538_eq : frameEntry optimized538 = (538, frame538) := by
  unfold frameEntry
  rw [frame538_eq]
  rfl
theorem slimEntry538_eq : slimEntry optimized538 = (538, 3, slim538) := by
  unfold slimEntry
  rw [slim538_eq]
  rfl
#print axioms frame538_eq
#print axioms slim538_eq
end InitECandidate.Proofs.StackAnalysis
