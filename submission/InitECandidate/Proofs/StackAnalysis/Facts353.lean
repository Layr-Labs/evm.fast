import InitECandidate.Proofs.StackAnalysis.Data353
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
def frame353 : Nat := 0
def slim353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame353_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized353.2.1 optimized353.2.2 = frame353 := by cbv
theorem slim353_eq : WordDepth.Executable.slim optimized353.2.2 = slim353 := by cbv
theorem frameEntry353_eq : frameEntry optimized353 = (353, frame353) := by
  unfold frameEntry
  rw [frame353_eq]
  rfl
theorem slimEntry353_eq : slimEntry optimized353 = (353, 2, slim353) := by
  unfold slimEntry
  rw [slim353_eq]
  rfl
#print axioms frame353_eq
#print axioms slim353_eq
end InitECandidate.Proofs.StackAnalysis
