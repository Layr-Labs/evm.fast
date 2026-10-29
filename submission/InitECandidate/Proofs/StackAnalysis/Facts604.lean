import InitECandidate.Proofs.StackAnalysis.Data604
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
def frame604 : Nat := 0
def slim604 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame604_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized604.2.1 optimized604.2.2 = frame604 := by cbv
theorem slim604_eq : WordDepth.Executable.slim optimized604.2.2 = slim604 := by cbv
theorem frameEntry604_eq : frameEntry optimized604 = (604, frame604) := by
  unfold frameEntry
  rw [frame604_eq]
  rfl
theorem slimEntry604_eq : slimEntry optimized604 = (604, 2, slim604) := by
  unfold slimEntry
  rw [slim604_eq]
  rfl
#print axioms frame604_eq
#print axioms slim604_eq
end InitECandidate.Proofs.StackAnalysis
