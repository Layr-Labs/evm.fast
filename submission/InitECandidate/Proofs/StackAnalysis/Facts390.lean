import InitECandidate.Proofs.StackAnalysis.Data390
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
def frame390 : Nat := 0
def slim390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame390_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized390.2.1 optimized390.2.2 = frame390 := by cbv
theorem slim390_eq : WordDepth.Executable.slim optimized390.2.2 = slim390 := by cbv
theorem frameEntry390_eq : frameEntry optimized390 = (390, frame390) := by
  unfold frameEntry
  rw [frame390_eq]
  rfl
theorem slimEntry390_eq : slimEntry optimized390 = (390, 1, slim390) := by
  unfold slimEntry
  rw [slim390_eq]
  rfl
#print axioms frame390_eq
#print axioms slim390_eq
end InitECandidate.Proofs.StackAnalysis
