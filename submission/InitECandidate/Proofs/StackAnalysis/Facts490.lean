import InitECandidate.Proofs.StackAnalysis.Data490
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
def frame490 : Nat := 0
def slim490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame490_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized490.2.1 optimized490.2.2 = frame490 := by cbv
theorem slim490_eq : WordDepth.Executable.slim optimized490.2.2 = slim490 := by cbv
theorem frameEntry490_eq : frameEntry optimized490 = (490, frame490) := by
  unfold frameEntry
  rw [frame490_eq]
  rfl
theorem slimEntry490_eq : slimEntry optimized490 = (490, 2, slim490) := by
  unfold slimEntry
  rw [slim490_eq]
  rfl
#print axioms frame490_eq
#print axioms slim490_eq
end InitECandidate.Proofs.StackAnalysis
