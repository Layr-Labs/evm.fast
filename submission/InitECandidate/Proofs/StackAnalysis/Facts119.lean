import InitECandidate.Proofs.StackAnalysis.Data119
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
def frame119 : Nat := 0
def slim119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame119_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized119.2.1 optimized119.2.2 = frame119 := by cbv
theorem slim119_eq : WordDepth.Executable.slim optimized119.2.2 = slim119 := by cbv
theorem frameEntry119_eq : frameEntry optimized119 = (119, frame119) := by
  unfold frameEntry
  rw [frame119_eq]
  rfl
theorem slimEntry119_eq : slimEntry optimized119 = (119, 3, slim119) := by
  unfold slimEntry
  rw [slim119_eq]
  rfl
#print axioms frame119_eq
#print axioms slim119_eq
end InitECandidate.Proofs.StackAnalysis
