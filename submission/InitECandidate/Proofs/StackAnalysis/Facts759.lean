import InitECandidate.Proofs.StackAnalysis.Data759
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
def frame759 : Nat := 0
def slim759 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 758) List.nil Option.none
theorem frame759_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized759.2.1 optimized759.2.2 = frame759 := by cbv
theorem slim759_eq : WordDepth.Executable.slim optimized759.2.2 = slim759 := by cbv
theorem frameEntry759_eq : frameEntry optimized759 = (759, frame759) := by
  unfold frameEntry
  rw [frame759_eq]
  rfl
theorem slimEntry759_eq : slimEntry optimized759 = (759, 3, slim759) := by
  unfold slimEntry
  rw [slim759_eq]
  rfl
#print axioms frame759_eq
#print axioms slim759_eq
end InitECandidate.Proofs.StackAnalysis
