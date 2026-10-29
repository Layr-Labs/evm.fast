import InitECandidate.Proofs.StackAnalysis.Data286
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
def frame286 : Nat := 0
def slim286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame286_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized286.2.1 optimized286.2.2 = frame286 := by cbv
theorem slim286_eq : WordDepth.Executable.slim optimized286.2.2 = slim286 := by cbv
theorem frameEntry286_eq : frameEntry optimized286 = (286, frame286) := by
  unfold frameEntry
  rw [frame286_eq]
  rfl
theorem slimEntry286_eq : slimEntry optimized286 = (286, 2, slim286) := by
  unfold slimEntry
  rw [slim286_eq]
  rfl
#print axioms frame286_eq
#print axioms slim286_eq
end InitECandidate.Proofs.StackAnalysis
