import InitECandidate.Proofs.StackAnalysis.Data220
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
def frame220 : Nat := 0
def slim220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame220_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized220.2.1 optimized220.2.2 = frame220 := by cbv
theorem slim220_eq : WordDepth.Executable.slim optimized220.2.2 = slim220 := by cbv
theorem frameEntry220_eq : frameEntry optimized220 = (220, frame220) := by
  unfold frameEntry
  rw [frame220_eq]
  rfl
theorem slimEntry220_eq : slimEntry optimized220 = (220, 2, slim220) := by
  unfold slimEntry
  rw [slim220_eq]
  rfl
#print axioms frame220_eq
#print axioms slim220_eq
end InitECandidate.Proofs.StackAnalysis
