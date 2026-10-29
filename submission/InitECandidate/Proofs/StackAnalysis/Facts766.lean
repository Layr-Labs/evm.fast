import InitECandidate.Proofs.StackAnalysis.Data766
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
def frame766 : Nat := 0
def slim766 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame766_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized766.2.1 optimized766.2.2 = frame766 := by cbv
theorem slim766_eq : WordDepth.Executable.slim optimized766.2.2 = slim766 := by cbv
theorem frameEntry766_eq : frameEntry optimized766 = (766, frame766) := by
  unfold frameEntry
  rw [frame766_eq]
  rfl
theorem slimEntry766_eq : slimEntry optimized766 = (766, 2, slim766) := by
  unfold slimEntry
  rw [slim766_eq]
  rfl
#print axioms frame766_eq
#print axioms slim766_eq
end InitECandidate.Proofs.StackAnalysis
