import InitECandidate.Proofs.StackAnalysis.Data216
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
def frame216 : Nat := 0
def slim216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 135) List.nil Option.none
theorem frame216_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized216.2.1 optimized216.2.2 = frame216 := by cbv
theorem slim216_eq : WordDepth.Executable.slim optimized216.2.2 = slim216 := by cbv
theorem frameEntry216_eq : frameEntry optimized216 = (216, frame216) := by
  unfold frameEntry
  rw [frame216_eq]
  rfl
theorem slimEntry216_eq : slimEntry optimized216 = (216, 9, slim216) := by
  unfold slimEntry
  rw [slim216_eq]
  rfl
#print axioms frame216_eq
#print axioms slim216_eq
end InitECandidate.Proofs.StackAnalysis
