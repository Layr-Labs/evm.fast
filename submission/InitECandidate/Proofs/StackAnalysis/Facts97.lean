import InitECandidate.Proofs.StackAnalysis.Data97
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
def frame97 : Nat := 0
def slim97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame97_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized97.2.1 optimized97.2.2 = frame97 := by cbv
theorem slim97_eq : WordDepth.Executable.slim optimized97.2.2 = slim97 := by cbv
theorem frameEntry97_eq : frameEntry optimized97 = (97, frame97) := by
  unfold frameEntry
  rw [frame97_eq]
  rfl
theorem slimEntry97_eq : slimEntry optimized97 = (97, 2, slim97) := by
  unfold slimEntry
  rw [slim97_eq]
  rfl
#print axioms frame97_eq
#print axioms slim97_eq
end InitECandidate.Proofs.StackAnalysis
