import InitECandidate.Proofs.StackAnalysis.Data222
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
def frame222 : Nat := 0
def slim222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 102) List.nil Option.none
theorem frame222_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized222.2.1 optimized222.2.2 = frame222 := by cbv
theorem slim222_eq : WordDepth.Executable.slim optimized222.2.2 = slim222 := by cbv
theorem frameEntry222_eq : frameEntry optimized222 = (222, frame222) := by
  unfold frameEntry
  rw [frame222_eq]
  rfl
theorem slimEntry222_eq : slimEntry optimized222 = (222, 2, slim222) := by
  unfold slimEntry
  rw [slim222_eq]
  rfl
#print axioms frame222_eq
#print axioms slim222_eq
end InitECandidate.Proofs.StackAnalysis
