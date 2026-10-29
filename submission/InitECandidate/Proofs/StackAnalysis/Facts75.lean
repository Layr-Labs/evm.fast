import InitECandidate.Proofs.StackAnalysis.Data75
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
def frame75 : Nat := 0
def slim75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame75_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized75.2.1 optimized75.2.2 = frame75 := by cbv
theorem slim75_eq : WordDepth.Executable.slim optimized75.2.2 = slim75 := by cbv
theorem frameEntry75_eq : frameEntry optimized75 = (75, frame75) := by
  unfold frameEntry
  rw [frame75_eq]
  rfl
theorem slimEntry75_eq : slimEntry optimized75 = (75, 1, slim75) := by
  unfold slimEntry
  rw [slim75_eq]
  rfl
#print axioms frame75_eq
#print axioms slim75_eq
end InitECandidate.Proofs.StackAnalysis
