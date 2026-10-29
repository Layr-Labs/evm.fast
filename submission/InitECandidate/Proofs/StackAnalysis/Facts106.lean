import InitECandidate.Proofs.StackAnalysis.Data106
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
def frame106 : Nat := 0
def slim106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame106_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized106.2.1 optimized106.2.2 = frame106 := by cbv
theorem slim106_eq : WordDepth.Executable.slim optimized106.2.2 = slim106 := by cbv
theorem frameEntry106_eq : frameEntry optimized106 = (106, frame106) := by
  unfold frameEntry
  rw [frame106_eq]
  rfl
theorem slimEntry106_eq : slimEntry optimized106 = (106, 9, slim106) := by
  unfold slimEntry
  rw [slim106_eq]
  rfl
#print axioms frame106_eq
#print axioms slim106_eq
end InitECandidate.Proofs.StackAnalysis
