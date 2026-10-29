import InitECandidate.Proofs.StackAnalysis.Data173
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
def frame173 : Nat := 0
def slim173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame173_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized173.2.1 optimized173.2.2 = frame173 := by cbv
theorem slim173_eq : WordDepth.Executable.slim optimized173.2.2 = slim173 := by cbv
theorem frameEntry173_eq : frameEntry optimized173 = (173, frame173) := by
  unfold frameEntry
  rw [frame173_eq]
  rfl
theorem slimEntry173_eq : slimEntry optimized173 = (173, 4, slim173) := by
  unfold slimEntry
  rw [slim173_eq]
  rfl
#print axioms frame173_eq
#print axioms slim173_eq
end InitECandidate.Proofs.StackAnalysis
