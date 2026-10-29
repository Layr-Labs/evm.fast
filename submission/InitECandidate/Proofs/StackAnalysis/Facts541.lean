import InitECandidate.Proofs.StackAnalysis.Data541
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
def frame541 : Nat := 0
def slim541 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame541_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized541.2.1 optimized541.2.2 = frame541 := by cbv
theorem slim541_eq : WordDepth.Executable.slim optimized541.2.2 = slim541 := by cbv
theorem frameEntry541_eq : frameEntry optimized541 = (541, frame541) := by
  unfold frameEntry
  rw [frame541_eq]
  rfl
theorem slimEntry541_eq : slimEntry optimized541 = (541, 2, slim541) := by
  unfold slimEntry
  rw [slim541_eq]
  rfl
#print axioms frame541_eq
#print axioms slim541_eq
end InitECandidate.Proofs.StackAnalysis
