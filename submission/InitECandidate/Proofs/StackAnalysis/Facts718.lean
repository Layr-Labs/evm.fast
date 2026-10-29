import InitECandidate.Proofs.StackAnalysis.Data718
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
def frame718 : Nat := 0
def slim718 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame718_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized718.2.1 optimized718.2.2 = frame718 := by cbv
theorem slim718_eq : WordDepth.Executable.slim optimized718.2.2 = slim718 := by cbv
theorem frameEntry718_eq : frameEntry optimized718 = (718, frame718) := by
  unfold frameEntry
  rw [frame718_eq]
  rfl
theorem slimEntry718_eq : slimEntry optimized718 = (718, 7, slim718) := by
  unfold slimEntry
  rw [slim718_eq]
  rfl
#print axioms frame718_eq
#print axioms slim718_eq
end InitECandidate.Proofs.StackAnalysis
