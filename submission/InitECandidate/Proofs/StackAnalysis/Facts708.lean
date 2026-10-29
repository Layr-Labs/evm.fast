import InitECandidate.Proofs.StackAnalysis.Data708
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
def frame708 : Nat := 0
def slim708 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame708_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized708.2.1 optimized708.2.2 = frame708 := by cbv
theorem slim708_eq : WordDepth.Executable.slim optimized708.2.2 = slim708 := by cbv
theorem frameEntry708_eq : frameEntry optimized708 = (708, frame708) := by
  unfold frameEntry
  rw [frame708_eq]
  rfl
theorem slimEntry708_eq : slimEntry optimized708 = (708, 13, slim708) := by
  unfold slimEntry
  rw [slim708_eq]
  rfl
#print axioms frame708_eq
#print axioms slim708_eq
end InitECandidate.Proofs.StackAnalysis
