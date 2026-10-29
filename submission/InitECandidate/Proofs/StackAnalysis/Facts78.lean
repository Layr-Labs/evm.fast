import InitECandidate.Proofs.StackAnalysis.Data78
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
def frame78 : Nat := 0
def slim78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame78_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized78.2.1 optimized78.2.2 = frame78 := by cbv
theorem slim78_eq : WordDepth.Executable.slim optimized78.2.2 = slim78 := by cbv
theorem frameEntry78_eq : frameEntry optimized78 = (78, frame78) := by
  unfold frameEntry
  rw [frame78_eq]
  rfl
theorem slimEntry78_eq : slimEntry optimized78 = (78, 3, slim78) := by
  unfold slimEntry
  rw [slim78_eq]
  rfl
#print axioms frame78_eq
#print axioms slim78_eq
end InitECandidate.Proofs.StackAnalysis
