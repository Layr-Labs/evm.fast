import InitECandidate.Proofs.StackAnalysis.Data856
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
def frame856 : Nat := 0
def slim856 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame856_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized856.2.1 optimized856.2.2 = frame856 := by cbv
theorem slim856_eq : WordDepth.Executable.slim optimized856.2.2 = slim856 := by cbv
theorem frameEntry856_eq : frameEntry optimized856 = (856, frame856) := by
  unfold frameEntry
  rw [frame856_eq]
  rfl
theorem slimEntry856_eq : slimEntry optimized856 = (856, 2, slim856) := by
  unfold slimEntry
  rw [slim856_eq]
  rfl
#print axioms frame856_eq
#print axioms slim856_eq
end InitECandidate.Proofs.StackAnalysis
