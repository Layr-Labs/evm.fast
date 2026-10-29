import InitECandidate.Proofs.StackAnalysis.Data373
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
def frame373 : Nat := 0
def slim373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 370) List.nil Option.none
theorem frame373_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized373.2.1 optimized373.2.2 = frame373 := by cbv
theorem slim373_eq : WordDepth.Executable.slim optimized373.2.2 = slim373 := by cbv
theorem frameEntry373_eq : frameEntry optimized373 = (373, frame373) := by
  unfold frameEntry
  rw [frame373_eq]
  rfl
theorem slimEntry373_eq : slimEntry optimized373 = (373, 3, slim373) := by
  unfold slimEntry
  rw [slim373_eq]
  rfl
#print axioms frame373_eq
#print axioms slim373_eq
end InitECandidate.Proofs.StackAnalysis
