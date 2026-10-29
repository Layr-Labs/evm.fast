import InitECandidate.Proofs.StackAnalysis.Data350
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
def frame350 : Nat := 0
def slim350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame350_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized350.2.1 optimized350.2.2 = frame350 := by cbv
theorem slim350_eq : WordDepth.Executable.slim optimized350.2.2 = slim350 := by cbv
theorem frameEntry350_eq : frameEntry optimized350 = (350, frame350) := by
  unfold frameEntry
  rw [frame350_eq]
  rfl
theorem slimEntry350_eq : slimEntry optimized350 = (350, 2, slim350) := by
  unfold slimEntry
  rw [slim350_eq]
  rfl
#print axioms frame350_eq
#print axioms slim350_eq
end InitECandidate.Proofs.StackAnalysis
