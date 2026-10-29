import InitECandidate.Proofs.StackAnalysis.Data299
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
def frame299 : Nat := 0
def slim299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame299_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized299.2.1 optimized299.2.2 = frame299 := by cbv
theorem slim299_eq : WordDepth.Executable.slim optimized299.2.2 = slim299 := by cbv
theorem frameEntry299_eq : frameEntry optimized299 = (299, frame299) := by
  unfold frameEntry
  rw [frame299_eq]
  rfl
theorem slimEntry299_eq : slimEntry optimized299 = (299, 2, slim299) := by
  unfold slimEntry
  rw [slim299_eq]
  rfl
#print axioms frame299_eq
#print axioms slim299_eq
end InitECandidate.Proofs.StackAnalysis
