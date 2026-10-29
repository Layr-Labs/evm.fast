import InitECandidate.Proofs.StackAnalysis.Data246
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
def frame246 : Nat := 0
def slim246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame246_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized246.2.1 optimized246.2.2 = frame246 := by cbv
theorem slim246_eq : WordDepth.Executable.slim optimized246.2.2 = slim246 := by cbv
theorem frameEntry246_eq : frameEntry optimized246 = (246, frame246) := by
  unfold frameEntry
  rw [frame246_eq]
  rfl
theorem slimEntry246_eq : slimEntry optimized246 = (246, 2, slim246) := by
  unfold slimEntry
  rw [slim246_eq]
  rfl
#print axioms frame246_eq
#print axioms slim246_eq
end InitECandidate.Proofs.StackAnalysis
