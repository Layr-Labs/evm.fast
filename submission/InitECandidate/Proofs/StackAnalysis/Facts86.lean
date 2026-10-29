import InitECandidate.Proofs.StackAnalysis.Data86
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
def frame86 : Nat := 0
def slim86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame86_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized86.2.1 optimized86.2.2 = frame86 := by cbv
theorem slim86_eq : WordDepth.Executable.slim optimized86.2.2 = slim86 := by cbv
theorem frameEntry86_eq : frameEntry optimized86 = (86, frame86) := by
  unfold frameEntry
  rw [frame86_eq]
  rfl
theorem slimEntry86_eq : slimEntry optimized86 = (86, 3, slim86) := by
  unfold slimEntry
  rw [slim86_eq]
  rfl
#print axioms frame86_eq
#print axioms slim86_eq
end InitECandidate.Proofs.StackAnalysis
