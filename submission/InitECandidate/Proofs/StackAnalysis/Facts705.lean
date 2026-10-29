import InitECandidate.Proofs.StackAnalysis.Data705
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
def frame705 : Nat := 0
def slim705 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame705_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized705.2.1 optimized705.2.2 = frame705 := by cbv
theorem slim705_eq : WordDepth.Executable.slim optimized705.2.2 = slim705 := by cbv
theorem frameEntry705_eq : frameEntry optimized705 = (705, frame705) := by
  unfold frameEntry
  rw [frame705_eq]
  rfl
theorem slimEntry705_eq : slimEntry optimized705 = (705, 7, slim705) := by
  unfold slimEntry
  rw [slim705_eq]
  rfl
#print axioms frame705_eq
#print axioms slim705_eq
end InitECandidate.Proofs.StackAnalysis
