import InitECandidate.Proofs.StackAnalysis.Data637
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
def frame637 : Nat := 0
def slim637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame637_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized637.2.1 optimized637.2.2 = frame637 := by cbv
theorem slim637_eq : WordDepth.Executable.slim optimized637.2.2 = slim637 := by cbv
theorem frameEntry637_eq : frameEntry optimized637 = (637, frame637) := by
  unfold frameEntry
  rw [frame637_eq]
  rfl
theorem slimEntry637_eq : slimEntry optimized637 = (637, 6, slim637) := by
  unfold slimEntry
  rw [slim637_eq]
  rfl
#print axioms frame637_eq
#print axioms slim637_eq
end InitECandidate.Proofs.StackAnalysis
