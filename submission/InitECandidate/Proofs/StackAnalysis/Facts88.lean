import InitECandidate.Proofs.StackAnalysis.Data88
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
def frame88 : Nat := 0
def slim88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame88_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized88.2.1 optimized88.2.2 = frame88 := by cbv
theorem slim88_eq : WordDepth.Executable.slim optimized88.2.2 = slim88 := by cbv
theorem frameEntry88_eq : frameEntry optimized88 = (88, frame88) := by
  unfold frameEntry
  rw [frame88_eq]
  rfl
theorem slimEntry88_eq : slimEntry optimized88 = (88, 3, slim88) := by
  unfold slimEntry
  rw [slim88_eq]
  rfl
#print axioms frame88_eq
#print axioms slim88_eq
end InitECandidate.Proofs.StackAnalysis
