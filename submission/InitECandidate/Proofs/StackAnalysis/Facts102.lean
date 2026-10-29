import InitECandidate.Proofs.StackAnalysis.Data102
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
def frame102 : Nat := 0
def slim102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame102_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized102.2.1 optimized102.2.2 = frame102 := by cbv
theorem slim102_eq : WordDepth.Executable.slim optimized102.2.2 = slim102 := by cbv
theorem frameEntry102_eq : frameEntry optimized102 = (102, frame102) := by
  unfold frameEntry
  rw [frame102_eq]
  rfl
theorem slimEntry102_eq : slimEntry optimized102 = (102, 5, slim102) := by
  unfold slimEntry
  rw [slim102_eq]
  rfl
#print axioms frame102_eq
#print axioms slim102_eq
end InitECandidate.Proofs.StackAnalysis
