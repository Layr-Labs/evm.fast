import InitECandidate.Proofs.StackAnalysis.Data219
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
def frame219 : Nat := 0
def slim219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 210) List.nil Option.none
theorem frame219_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized219.2.1 optimized219.2.2 = frame219 := by cbv
theorem slim219_eq : WordDepth.Executable.slim optimized219.2.2 = slim219 := by cbv
theorem frameEntry219_eq : frameEntry optimized219 = (219, frame219) := by
  unfold frameEntry
  rw [frame219_eq]
  rfl
theorem slimEntry219_eq : slimEntry optimized219 = (219, 5, slim219) := by
  unfold slimEntry
  rw [slim219_eq]
  rfl
#print axioms frame219_eq
#print axioms slim219_eq
end InitECandidate.Proofs.StackAnalysis
