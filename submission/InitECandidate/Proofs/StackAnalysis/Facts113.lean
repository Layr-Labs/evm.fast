import InitECandidate.Proofs.StackAnalysis.Data113
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
def frame113 : Nat := 0
def slim113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame113_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized113.2.1 optimized113.2.2 = frame113 := by cbv
theorem slim113_eq : WordDepth.Executable.slim optimized113.2.2 = slim113 := by cbv
theorem frameEntry113_eq : frameEntry optimized113 = (113, frame113) := by
  unfold frameEntry
  rw [frame113_eq]
  rfl
theorem slimEntry113_eq : slimEntry optimized113 = (113, 9, slim113) := by
  unfold slimEntry
  rw [slim113_eq]
  rfl
#print axioms frame113_eq
#print axioms slim113_eq
end InitECandidate.Proofs.StackAnalysis
