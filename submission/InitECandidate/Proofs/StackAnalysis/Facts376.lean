import InitECandidate.Proofs.StackAnalysis.Data376
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
def frame376 : Nat := 0
def slim376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 370) List.nil Option.none
theorem frame376_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized376.2.1 optimized376.2.2 = frame376 := by cbv
theorem slim376_eq : WordDepth.Executable.slim optimized376.2.2 = slim376 := by cbv
theorem frameEntry376_eq : frameEntry optimized376 = (376, frame376) := by
  unfold frameEntry
  rw [frame376_eq]
  rfl
theorem slimEntry376_eq : slimEntry optimized376 = (376, 3, slim376) := by
  unfold slimEntry
  rw [slim376_eq]
  rfl
#print axioms frame376_eq
#print axioms slim376_eq
end InitECandidate.Proofs.StackAnalysis
