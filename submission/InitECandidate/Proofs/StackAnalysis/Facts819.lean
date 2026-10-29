import InitECandidate.Proofs.StackAnalysis.Data819
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
def frame819 : Nat := 0
def slim819 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame819_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized819.2.1 optimized819.2.2 = frame819 := by cbv
theorem slim819_eq : WordDepth.Executable.slim optimized819.2.2 = slim819 := by cbv
theorem frameEntry819_eq : frameEntry optimized819 = (819, frame819) := by
  unfold frameEntry
  rw [frame819_eq]
  rfl
theorem slimEntry819_eq : slimEntry optimized819 = (819, 2, slim819) := by
  unfold slimEntry
  rw [slim819_eq]
  rfl
#print axioms frame819_eq
#print axioms slim819_eq
end InitECandidate.Proofs.StackAnalysis
