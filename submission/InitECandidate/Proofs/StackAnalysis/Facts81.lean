import InitECandidate.Proofs.StackAnalysis.Data81
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
def frame81 : Nat := 0
def slim81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame81_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized81.2.1 optimized81.2.2 = frame81 := by cbv
theorem slim81_eq : WordDepth.Executable.slim optimized81.2.2 = slim81 := by cbv
theorem frameEntry81_eq : frameEntry optimized81 = (81, frame81) := by
  unfold frameEntry
  rw [frame81_eq]
  rfl
theorem slimEntry81_eq : slimEntry optimized81 = (81, 2, slim81) := by
  unfold slimEntry
  rw [slim81_eq]
  rfl
#print axioms frame81_eq
#print axioms slim81_eq
end InitECandidate.Proofs.StackAnalysis
