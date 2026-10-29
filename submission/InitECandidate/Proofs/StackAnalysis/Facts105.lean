import InitECandidate.Proofs.StackAnalysis.Data105
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
def frame105 : Nat := 0
def slim105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame105_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized105.2.1 optimized105.2.2 = frame105 := by cbv
theorem slim105_eq : WordDepth.Executable.slim optimized105.2.2 = slim105 := by cbv
theorem frameEntry105_eq : frameEntry optimized105 = (105, frame105) := by
  unfold frameEntry
  rw [frame105_eq]
  rfl
theorem slimEntry105_eq : slimEntry optimized105 = (105, 9, slim105) := by
  unfold slimEntry
  rw [slim105_eq]
  rfl
#print axioms frame105_eq
#print axioms slim105_eq
end InitECandidate.Proofs.StackAnalysis
