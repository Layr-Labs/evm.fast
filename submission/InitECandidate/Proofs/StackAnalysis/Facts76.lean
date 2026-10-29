import InitECandidate.Proofs.StackAnalysis.Data76
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
def frame76 : Nat := 0
def slim76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame76_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized76.2.1 optimized76.2.2 = frame76 := by cbv
theorem slim76_eq : WordDepth.Executable.slim optimized76.2.2 = slim76 := by cbv
theorem frameEntry76_eq : frameEntry optimized76 = (76, frame76) := by
  unfold frameEntry
  rw [frame76_eq]
  rfl
theorem slimEntry76_eq : slimEntry optimized76 = (76, 2, slim76) := by
  unfold slimEntry
  rw [slim76_eq]
  rfl
#print axioms frame76_eq
#print axioms slim76_eq
end InitECandidate.Proofs.StackAnalysis
