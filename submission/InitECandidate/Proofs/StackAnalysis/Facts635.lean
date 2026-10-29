import InitECandidate.Proofs.StackAnalysis.Data635
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
def frame635 : Nat := 0
def slim635 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame635_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized635.2.1 optimized635.2.2 = frame635 := by cbv
theorem slim635_eq : WordDepth.Executable.slim optimized635.2.2 = slim635 := by cbv
theorem frameEntry635_eq : frameEntry optimized635 = (635, frame635) := by
  unfold frameEntry
  rw [frame635_eq]
  rfl
theorem slimEntry635_eq : slimEntry optimized635 = (635, 4, slim635) := by
  unfold slimEntry
  rw [slim635_eq]
  rfl
#print axioms frame635_eq
#print axioms slim635_eq
end InitECandidate.Proofs.StackAnalysis
