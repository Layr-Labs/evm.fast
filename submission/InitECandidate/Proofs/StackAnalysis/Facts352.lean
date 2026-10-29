import InitECandidate.Proofs.StackAnalysis.Data352
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
def frame352 : Nat := 0
def slim352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame352_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized352.2.1 optimized352.2.2 = frame352 := by cbv
theorem slim352_eq : WordDepth.Executable.slim optimized352.2.2 = slim352 := by cbv
theorem frameEntry352_eq : frameEntry optimized352 = (352, frame352) := by
  unfold frameEntry
  rw [frame352_eq]
  rfl
theorem slimEntry352_eq : slimEntry optimized352 = (352, 2, slim352) := by
  unfold slimEntry
  rw [slim352_eq]
  rfl
#print axioms frame352_eq
#print axioms slim352_eq
end InitECandidate.Proofs.StackAnalysis
