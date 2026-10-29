import InitECandidate.Proofs.StackAnalysis.Data288
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
def frame288 : Nat := 0
def slim288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame288_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized288.2.1 optimized288.2.2 = frame288 := by cbv
theorem slim288_eq : WordDepth.Executable.slim optimized288.2.2 = slim288 := by cbv
theorem frameEntry288_eq : frameEntry optimized288 = (288, frame288) := by
  unfold frameEntry
  rw [frame288_eq]
  rfl
theorem slimEntry288_eq : slimEntry optimized288 = (288, 4, slim288) := by
  unfold slimEntry
  rw [slim288_eq]
  rfl
#print axioms frame288_eq
#print axioms slim288_eq
end InitECandidate.Proofs.StackAnalysis
