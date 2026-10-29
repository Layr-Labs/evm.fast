import InitECandidate.Proofs.StackAnalysis.Data99
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
def frame99 : Nat := 0
def slim99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame99_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized99.2.1 optimized99.2.2 = frame99 := by cbv
theorem slim99_eq : WordDepth.Executable.slim optimized99.2.2 = slim99 := by cbv
theorem frameEntry99_eq : frameEntry optimized99 = (99, frame99) := by
  unfold frameEntry
  rw [frame99_eq]
  rfl
theorem slimEntry99_eq : slimEntry optimized99 = (99, 2, slim99) := by
  unfold slimEntry
  rw [slim99_eq]
  rfl
#print axioms frame99_eq
#print axioms slim99_eq
end InitECandidate.Proofs.StackAnalysis
