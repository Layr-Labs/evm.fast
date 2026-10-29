import InitECandidate.Proofs.StackAnalysis.Data137
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
def frame137 : Nat := 0
def slim137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame137_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized137.2.1 optimized137.2.2 = frame137 := by cbv
theorem slim137_eq : WordDepth.Executable.slim optimized137.2.2 = slim137 := by cbv
theorem frameEntry137_eq : frameEntry optimized137 = (137, frame137) := by
  unfold frameEntry
  rw [frame137_eq]
  rfl
theorem slimEntry137_eq : slimEntry optimized137 = (137, 2, slim137) := by
  unfold slimEntry
  rw [slim137_eq]
  rfl
#print axioms frame137_eq
#print axioms slim137_eq
end InitECandidate.Proofs.StackAnalysis
