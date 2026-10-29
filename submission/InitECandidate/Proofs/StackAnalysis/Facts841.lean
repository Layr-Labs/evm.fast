import InitECandidate.Proofs.StackAnalysis.Data841
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
def frame841 : Nat := 0
def slim841 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame841_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized841.2.1 optimized841.2.2 = frame841 := by cbv
theorem slim841_eq : WordDepth.Executable.slim optimized841.2.2 = slim841 := by cbv
theorem frameEntry841_eq : frameEntry optimized841 = (841, frame841) := by
  unfold frameEntry
  rw [frame841_eq]
  rfl
theorem slimEntry841_eq : slimEntry optimized841 = (841, 2, slim841) := by
  unfold slimEntry
  rw [slim841_eq]
  rfl
#print axioms frame841_eq
#print axioms slim841_eq
end InitECandidate.Proofs.StackAnalysis
