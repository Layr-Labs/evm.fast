import InitECandidate.Proofs.StackAnalysis.Data154
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
def frame154 : Nat := 13
def slim154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame154_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized154.2.1 optimized154.2.2 = frame154 := by cbv
theorem slim154_eq : WordDepth.Executable.slim optimized154.2.2 = slim154 := by cbv
theorem frameEntry154_eq : frameEntry optimized154 = (154, frame154) := by
  unfold frameEntry
  rw [frame154_eq]
  rfl
theorem slimEntry154_eq : slimEntry optimized154 = (154, 4, slim154) := by
  unfold slimEntry
  rw [slim154_eq]
  rfl
#print axioms frame154_eq
#print axioms slim154_eq
end InitECandidate.Proofs.StackAnalysis
