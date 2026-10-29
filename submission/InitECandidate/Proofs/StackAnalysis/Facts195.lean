import InitECandidate.Proofs.StackAnalysis.Data195
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
def frame195 : Nat := 0
def slim195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame195_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized195.2.1 optimized195.2.2 = frame195 := by cbv
theorem slim195_eq : WordDepth.Executable.slim optimized195.2.2 = slim195 := by cbv
theorem frameEntry195_eq : frameEntry optimized195 = (195, frame195) := by
  unfold frameEntry
  rw [frame195_eq]
  rfl
theorem slimEntry195_eq : slimEntry optimized195 = (195, 2, slim195) := by
  unfold slimEntry
  rw [slim195_eq]
  rfl
#print axioms frame195_eq
#print axioms slim195_eq
end InitECandidate.Proofs.StackAnalysis
