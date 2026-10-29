import InitECandidate.Proofs.StackAnalysis.Data474
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
def frame474 : Nat := 0
def slim474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame474_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized474.2.1 optimized474.2.2 = frame474 := by cbv
theorem slim474_eq : WordDepth.Executable.slim optimized474.2.2 = slim474 := by cbv
theorem frameEntry474_eq : frameEntry optimized474 = (474, frame474) := by
  unfold frameEntry
  rw [frame474_eq]
  rfl
theorem slimEntry474_eq : slimEntry optimized474 = (474, 1, slim474) := by
  unfold slimEntry
  rw [slim474_eq]
  rfl
#print axioms frame474_eq
#print axioms slim474_eq
end InitECandidate.Proofs.StackAnalysis
