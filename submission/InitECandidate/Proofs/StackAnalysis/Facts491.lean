import InitECandidate.Proofs.StackAnalysis.Data491
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
def frame491 : Nat := 0
def slim491 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame491_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized491.2.1 optimized491.2.2 = frame491 := by cbv
theorem slim491_eq : WordDepth.Executable.slim optimized491.2.2 = slim491 := by cbv
theorem frameEntry491_eq : frameEntry optimized491 = (491, frame491) := by
  unfold frameEntry
  rw [frame491_eq]
  rfl
theorem slimEntry491_eq : slimEntry optimized491 = (491, 1, slim491) := by
  unfold slimEntry
  rw [slim491_eq]
  rfl
#print axioms frame491_eq
#print axioms slim491_eq
end InitECandidate.Proofs.StackAnalysis
