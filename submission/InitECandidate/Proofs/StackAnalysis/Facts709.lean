import InitECandidate.Proofs.StackAnalysis.Data709
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
def frame709 : Nat := 0
def slim709 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame709_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized709.2.1 optimized709.2.2 = frame709 := by cbv
theorem slim709_eq : WordDepth.Executable.slim optimized709.2.2 = slim709 := by cbv
theorem frameEntry709_eq : frameEntry optimized709 = (709, frame709) := by
  unfold frameEntry
  rw [frame709_eq]
  rfl
theorem slimEntry709_eq : slimEntry optimized709 = (709, 13, slim709) := by
  unfold slimEntry
  rw [slim709_eq]
  rfl
#print axioms frame709_eq
#print axioms slim709_eq
end InitECandidate.Proofs.StackAnalysis
