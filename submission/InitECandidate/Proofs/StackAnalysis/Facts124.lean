import InitECandidate.Proofs.StackAnalysis.Data124
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
def frame124 : Nat := 0
def slim124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame124_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized124.2.1 optimized124.2.2 = frame124 := by cbv
theorem slim124_eq : WordDepth.Executable.slim optimized124.2.2 = slim124 := by cbv
theorem frameEntry124_eq : frameEntry optimized124 = (124, frame124) := by
  unfold frameEntry
  rw [frame124_eq]
  rfl
theorem slimEntry124_eq : slimEntry optimized124 = (124, 6, slim124) := by
  unfold slimEntry
  rw [slim124_eq]
  rfl
#print axioms frame124_eq
#print axioms slim124_eq
end InitECandidate.Proofs.StackAnalysis
