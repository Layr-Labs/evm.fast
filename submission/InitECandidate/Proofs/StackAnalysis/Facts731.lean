import InitECandidate.Proofs.StackAnalysis.Data731
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
def frame731 : Nat := 0
def slim731 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame731_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized731.2.1 optimized731.2.2 = frame731 := by cbv
theorem slim731_eq : WordDepth.Executable.slim optimized731.2.2 = slim731 := by cbv
theorem frameEntry731_eq : frameEntry optimized731 = (731, frame731) := by
  unfold frameEntry
  rw [frame731_eq]
  rfl
theorem slimEntry731_eq : slimEntry optimized731 = (731, 2, slim731) := by
  unfold slimEntry
  rw [slim731_eq]
  rfl
#print axioms frame731_eq
#print axioms slim731_eq
end InitECandidate.Proofs.StackAnalysis
