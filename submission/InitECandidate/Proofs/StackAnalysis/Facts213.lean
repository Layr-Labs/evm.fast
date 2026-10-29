import InitECandidate.Proofs.StackAnalysis.Data213
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
def frame213 : Nat := 0
def slim213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 210) List.nil Option.none
theorem frame213_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized213.2.1 optimized213.2.2 = frame213 := by cbv
theorem slim213_eq : WordDepth.Executable.slim optimized213.2.2 = slim213 := by cbv
theorem frameEntry213_eq : frameEntry optimized213 = (213, frame213) := by
  unfold frameEntry
  rw [frame213_eq]
  rfl
theorem slimEntry213_eq : slimEntry optimized213 = (213, 5, slim213) := by
  unfold slimEntry
  rw [slim213_eq]
  rfl
#print axioms frame213_eq
#print axioms slim213_eq
end InitECandidate.Proofs.StackAnalysis
