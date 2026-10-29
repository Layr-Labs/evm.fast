import InitECandidate.Proofs.StackAnalysis.Data713
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
def frame713 : Nat := 0
def slim713 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 710) List.nil Option.none
theorem frame713_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized713.2.1 optimized713.2.2 = frame713 := by cbv
theorem slim713_eq : WordDepth.Executable.slim optimized713.2.2 = slim713 := by cbv
theorem frameEntry713_eq : frameEntry optimized713 = (713, frame713) := by
  unfold frameEntry
  rw [frame713_eq]
  rfl
theorem slimEntry713_eq : slimEntry optimized713 = (713, 7, slim713) := by
  unfold slimEntry
  rw [slim713_eq]
  rfl
#print axioms frame713_eq
#print axioms slim713_eq
end InitECandidate.Proofs.StackAnalysis
