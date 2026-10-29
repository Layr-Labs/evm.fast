import InitECandidate.Proofs.StackAnalysis.Data196
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
def frame196 : Nat := 0
def slim196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame196_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized196.2.1 optimized196.2.2 = frame196 := by cbv
theorem slim196_eq : WordDepth.Executable.slim optimized196.2.2 = slim196 := by cbv
theorem frameEntry196_eq : frameEntry optimized196 = (196, frame196) := by
  unfold frameEntry
  rw [frame196_eq]
  rfl
theorem slimEntry196_eq : slimEntry optimized196 = (196, 2, slim196) := by
  unfold slimEntry
  rw [slim196_eq]
  rfl
#print axioms frame196_eq
#print axioms slim196_eq
end InitECandidate.Proofs.StackAnalysis
