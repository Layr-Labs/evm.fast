import InitECandidate.Proofs.StackAnalysis.Data151
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
def frame151 : Nat := 15
def slim151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame151_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized151.2.1 optimized151.2.2 = frame151 := by cbv
theorem slim151_eq : WordDepth.Executable.slim optimized151.2.2 = slim151 := by cbv
theorem frameEntry151_eq : frameEntry optimized151 = (151, frame151) := by
  unfold frameEntry
  rw [frame151_eq]
  rfl
theorem slimEntry151_eq : slimEntry optimized151 = (151, 3, slim151) := by
  unfold slimEntry
  rw [slim151_eq]
  rfl
#print axioms frame151_eq
#print axioms slim151_eq
end InitECandidate.Proofs.StackAnalysis
