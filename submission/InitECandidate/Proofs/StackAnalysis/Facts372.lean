import InitECandidate.Proofs.StackAnalysis.Data372
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
def frame372 : Nat := 0
def slim372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 370) List.nil Option.none
theorem frame372_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized372.2.1 optimized372.2.2 = frame372 := by cbv
theorem slim372_eq : WordDepth.Executable.slim optimized372.2.2 = slim372 := by cbv
theorem frameEntry372_eq : frameEntry optimized372 = (372, frame372) := by
  unfold frameEntry
  rw [frame372_eq]
  rfl
theorem slimEntry372_eq : slimEntry optimized372 = (372, 4, slim372) := by
  unfold slimEntry
  rw [slim372_eq]
  rfl
#print axioms frame372_eq
#print axioms slim372_eq
end InitECandidate.Proofs.StackAnalysis
