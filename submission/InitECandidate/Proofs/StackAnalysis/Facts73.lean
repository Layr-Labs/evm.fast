import InitECandidate.Proofs.StackAnalysis.Data73
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
def frame73 : Nat := 0
def slim73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame73_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized73.2.1 optimized73.2.2 = frame73 := by cbv
theorem slim73_eq : WordDepth.Executable.slim optimized73.2.2 = slim73 := by cbv
theorem frameEntry73_eq : frameEntry optimized73 = (73, frame73) := by
  unfold frameEntry
  rw [frame73_eq]
  rfl
theorem slimEntry73_eq : slimEntry optimized73 = (73, 2, slim73) := by
  unfold slimEntry
  rw [slim73_eq]
  rfl
#print axioms frame73_eq
#print axioms slim73_eq
end InitECandidate.Proofs.StackAnalysis
