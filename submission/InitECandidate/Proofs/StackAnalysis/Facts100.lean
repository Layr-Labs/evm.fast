import InitECandidate.Proofs.StackAnalysis.Data100
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
def frame100 : Nat := 0
def slim100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame100_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized100.2.1 optimized100.2.2 = frame100 := by cbv
theorem slim100_eq : WordDepth.Executable.slim optimized100.2.2 = slim100 := by cbv
theorem frameEntry100_eq : frameEntry optimized100 = (100, frame100) := by
  unfold frameEntry
  rw [frame100_eq]
  rfl
theorem slimEntry100_eq : slimEntry optimized100 = (100, 5, slim100) := by
  unfold slimEntry
  rw [slim100_eq]
  rfl
#print axioms frame100_eq
#print axioms slim100_eq
end InitECandidate.Proofs.StackAnalysis
