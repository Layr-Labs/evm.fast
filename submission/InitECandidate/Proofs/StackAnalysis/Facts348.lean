import InitECandidate.Proofs.StackAnalysis.Data348
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
def frame348 : Nat := 0
def slim348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame348_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized348.2.1 optimized348.2.2 = frame348 := by cbv
theorem slim348_eq : WordDepth.Executable.slim optimized348.2.2 = slim348 := by cbv
theorem frameEntry348_eq : frameEntry optimized348 = (348, frame348) := by
  unfold frameEntry
  rw [frame348_eq]
  rfl
theorem slimEntry348_eq : slimEntry optimized348 = (348, 2, slim348) := by
  unfold slimEntry
  rw [slim348_eq]
  rfl
#print axioms frame348_eq
#print axioms slim348_eq
end InitECandidate.Proofs.StackAnalysis
