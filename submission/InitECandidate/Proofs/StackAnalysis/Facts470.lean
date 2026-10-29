import InitECandidate.Proofs.StackAnalysis.Data470
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
def frame470 : Nat := 0
def slim470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame470_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized470.2.1 optimized470.2.2 = frame470 := by cbv
theorem slim470_eq : WordDepth.Executable.slim optimized470.2.2 = slim470 := by cbv
theorem frameEntry470_eq : frameEntry optimized470 = (470, frame470) := by
  unfold frameEntry
  rw [frame470_eq]
  rfl
theorem slimEntry470_eq : slimEntry optimized470 = (470, 2, slim470) := by
  unfold slimEntry
  rw [slim470_eq]
  rfl
#print axioms frame470_eq
#print axioms slim470_eq
end InitECandidate.Proofs.StackAnalysis
