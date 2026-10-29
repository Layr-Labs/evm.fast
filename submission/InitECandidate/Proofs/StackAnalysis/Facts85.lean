import InitECandidate.Proofs.StackAnalysis.Data85
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
def frame85 : Nat := 0
def slim85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 84) List.nil Option.none
theorem frame85_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized85.2.1 optimized85.2.2 = frame85 := by cbv
theorem slim85_eq : WordDepth.Executable.slim optimized85.2.2 = slim85 := by cbv
theorem frameEntry85_eq : frameEntry optimized85 = (85, frame85) := by
  unfold frameEntry
  rw [frame85_eq]
  rfl
theorem slimEntry85_eq : slimEntry optimized85 = (85, 2, slim85) := by
  unfold slimEntry
  rw [slim85_eq]
  rfl
#print axioms frame85_eq
#print axioms slim85_eq
end InitECandidate.Proofs.StackAnalysis
