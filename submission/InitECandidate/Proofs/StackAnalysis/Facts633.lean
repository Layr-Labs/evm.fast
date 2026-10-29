import InitECandidate.Proofs.StackAnalysis.Data633
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
def frame633 : Nat := 0
def slim633 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame633_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized633.2.1 optimized633.2.2 = frame633 := by cbv
theorem slim633_eq : WordDepth.Executable.slim optimized633.2.2 = slim633 := by cbv
theorem frameEntry633_eq : frameEntry optimized633 = (633, frame633) := by
  unfold frameEntry
  rw [frame633_eq]
  rfl
theorem slimEntry633_eq : slimEntry optimized633 = (633, 7, slim633) := by
  unfold slimEntry
  rw [slim633_eq]
  rfl
#print axioms frame633_eq
#print axioms slim633_eq
end InitECandidate.Proofs.StackAnalysis
