import InitECandidate.Proofs.StackAnalysis.Data715
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
def frame715 : Nat := 0
def slim715 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 714) List.nil Option.none
theorem frame715_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized715.2.1 optimized715.2.2 = frame715 := by cbv
theorem slim715_eq : WordDepth.Executable.slim optimized715.2.2 = slim715 := by cbv
theorem frameEntry715_eq : frameEntry optimized715 = (715, frame715) := by
  unfold frameEntry
  rw [frame715_eq]
  rfl
theorem slimEntry715_eq : slimEntry optimized715 = (715, 7, slim715) := by
  unfold slimEntry
  rw [slim715_eq]
  rfl
#print axioms frame715_eq
#print axioms slim715_eq
end InitECandidate.Proofs.StackAnalysis
