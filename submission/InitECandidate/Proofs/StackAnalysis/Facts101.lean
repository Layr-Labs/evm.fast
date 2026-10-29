import InitECandidate.Proofs.StackAnalysis.Data101
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
def frame101 : Nat := 0
def slim101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame101_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized101.2.1 optimized101.2.2 = frame101 := by cbv
theorem slim101_eq : WordDepth.Executable.slim optimized101.2.2 = slim101 := by cbv
theorem frameEntry101_eq : frameEntry optimized101 = (101, frame101) := by
  unfold frameEntry
  rw [frame101_eq]
  rfl
theorem slimEntry101_eq : slimEntry optimized101 = (101, 5, slim101) := by
  unfold slimEntry
  rw [slim101_eq]
  rfl
#print axioms frame101_eq
#print axioms slim101_eq
end InitECandidate.Proofs.StackAnalysis
