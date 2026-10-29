import InitECandidate.Proofs.StackAnalysis.Data142
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
def frame142 : Nat := 0
def slim142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame142_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized142.2.1 optimized142.2.2 = frame142 := by cbv
theorem slim142_eq : WordDepth.Executable.slim optimized142.2.2 = slim142 := by cbv
theorem frameEntry142_eq : frameEntry optimized142 = (142, frame142) := by
  unfold frameEntry
  rw [frame142_eq]
  rfl
theorem slimEntry142_eq : slimEntry optimized142 = (142, 6, slim142) := by
  unfold slimEntry
  rw [slim142_eq]
  rfl
#print axioms frame142_eq
#print axioms slim142_eq
end InitECandidate.Proofs.StackAnalysis
