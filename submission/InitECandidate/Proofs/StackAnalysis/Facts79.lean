import InitECandidate.Proofs.StackAnalysis.Data79
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
def frame79 : Nat := 0
def slim79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame79_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized79.2.1 optimized79.2.2 = frame79 := by cbv
theorem slim79_eq : WordDepth.Executable.slim optimized79.2.2 = slim79 := by cbv
theorem frameEntry79_eq : frameEntry optimized79 = (79, frame79) := by
  unfold frameEntry
  rw [frame79_eq]
  rfl
theorem slimEntry79_eq : slimEntry optimized79 = (79, 4, slim79) := by
  unfold slimEntry
  rw [slim79_eq]
  rfl
#print axioms frame79_eq
#print axioms slim79_eq
end InitECandidate.Proofs.StackAnalysis
