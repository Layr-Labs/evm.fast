import InitECandidate.Proofs.StackAnalysis.Data114
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
def frame114 : Nat := 0
def slim114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame114_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized114.2.1 optimized114.2.2 = frame114 := by cbv
theorem slim114_eq : WordDepth.Executable.slim optimized114.2.2 = slim114 := by cbv
theorem frameEntry114_eq : frameEntry optimized114 = (114, frame114) := by
  unfold frameEntry
  rw [frame114_eq]
  rfl
theorem slimEntry114_eq : slimEntry optimized114 = (114, 9, slim114) := by
  unfold slimEntry
  rw [slim114_eq]
  rfl
#print axioms frame114_eq
#print axioms slim114_eq
end InitECandidate.Proofs.StackAnalysis
