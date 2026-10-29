import InitECandidate.Proofs.StackAnalysis.Data103
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
def frame103 : Nat := 0
def slim103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame103_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized103.2.1 optimized103.2.2 = frame103 := by cbv
theorem slim103_eq : WordDepth.Executable.slim optimized103.2.2 = slim103 := by cbv
theorem frameEntry103_eq : frameEntry optimized103 = (103, frame103) := by
  unfold frameEntry
  rw [frame103_eq]
  rfl
theorem slimEntry103_eq : slimEntry optimized103 = (103, 6, slim103) := by
  unfold slimEntry
  rw [slim103_eq]
  rfl
#print axioms frame103_eq
#print axioms slim103_eq
end InitECandidate.Proofs.StackAnalysis
