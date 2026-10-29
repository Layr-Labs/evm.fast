import InitECandidate.Proofs.StackAnalysis.Data117
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
def frame117 : Nat := 0
def slim117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame117_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized117.2.1 optimized117.2.2 = frame117 := by cbv
theorem slim117_eq : WordDepth.Executable.slim optimized117.2.2 = slim117 := by cbv
theorem frameEntry117_eq : frameEntry optimized117 = (117, frame117) := by
  unfold frameEntry
  rw [frame117_eq]
  rfl
theorem slimEntry117_eq : slimEntry optimized117 = (117, 9, slim117) := by
  unfold slimEntry
  rw [slim117_eq]
  rfl
#print axioms frame117_eq
#print axioms slim117_eq
end InitECandidate.Proofs.StackAnalysis
