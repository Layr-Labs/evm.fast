import InitECandidate.Proofs.StackAnalysis.Data112
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
def frame112 : Nat := 0
def slim112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame112_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized112.2.1 optimized112.2.2 = frame112 := by cbv
theorem slim112_eq : WordDepth.Executable.slim optimized112.2.2 = slim112 := by cbv
theorem frameEntry112_eq : frameEntry optimized112 = (112, frame112) := by
  unfold frameEntry
  rw [frame112_eq]
  rfl
theorem slimEntry112_eq : slimEntry optimized112 = (112, 9, slim112) := by
  unfold slimEntry
  rw [slim112_eq]
  rfl
#print axioms frame112_eq
#print axioms slim112_eq
end InitECandidate.Proofs.StackAnalysis
