import InitECandidate.Proofs.StackAnalysis.Data374
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
def frame374 : Nat := 0
def slim374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 370) List.nil Option.none
theorem frame374_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized374.2.1 optimized374.2.2 = frame374 := by cbv
theorem slim374_eq : WordDepth.Executable.slim optimized374.2.2 = slim374 := by cbv
theorem frameEntry374_eq : frameEntry optimized374 = (374, frame374) := by
  unfold frameEntry
  rw [frame374_eq]
  rfl
theorem slimEntry374_eq : slimEntry optimized374 = (374, 3, slim374) := by
  unfold slimEntry
  rw [slim374_eq]
  rfl
#print axioms frame374_eq
#print axioms slim374_eq
end InitECandidate.Proofs.StackAnalysis
