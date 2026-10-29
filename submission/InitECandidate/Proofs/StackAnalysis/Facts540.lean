import InitECandidate.Proofs.StackAnalysis.Data540
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
def frame540 : Nat := 0
def slim540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame540_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized540.2.1 optimized540.2.2 = frame540 := by cbv
theorem slim540_eq : WordDepth.Executable.slim optimized540.2.2 = slim540 := by cbv
theorem frameEntry540_eq : frameEntry optimized540 = (540, frame540) := by
  unfold frameEntry
  rw [frame540_eq]
  rfl
theorem slimEntry540_eq : slimEntry optimized540 = (540, 1, slim540) := by
  unfold slimEntry
  rw [slim540_eq]
  rfl
#print axioms frame540_eq
#print axioms slim540_eq
end InitECandidate.Proofs.StackAnalysis
