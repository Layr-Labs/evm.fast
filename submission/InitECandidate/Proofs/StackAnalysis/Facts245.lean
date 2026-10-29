import InitECandidate.Proofs.StackAnalysis.Data245
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
def frame245 : Nat := 0
def slim245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame245_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized245.2.1 optimized245.2.2 = frame245 := by cbv
theorem slim245_eq : WordDepth.Executable.slim optimized245.2.2 = slim245 := by cbv
theorem frameEntry245_eq : frameEntry optimized245 = (245, frame245) := by
  unfold frameEntry
  rw [frame245_eq]
  rfl
theorem slimEntry245_eq : slimEntry optimized245 = (245, 2, slim245) := by
  unfold slimEntry
  rw [slim245_eq]
  rfl
#print axioms frame245_eq
#print axioms slim245_eq
end InitECandidate.Proofs.StackAnalysis
