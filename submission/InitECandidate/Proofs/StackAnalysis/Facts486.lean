import InitECandidate.Proofs.StackAnalysis.Data486
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
def frame486 : Nat := 0
def slim486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame486_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized486.2.1 optimized486.2.2 = frame486 := by cbv
theorem slim486_eq : WordDepth.Executable.slim optimized486.2.2 = slim486 := by cbv
theorem frameEntry486_eq : frameEntry optimized486 = (486, frame486) := by
  unfold frameEntry
  rw [frame486_eq]
  rfl
theorem slimEntry486_eq : slimEntry optimized486 = (486, 5, slim486) := by
  unfold slimEntry
  rw [slim486_eq]
  rfl
#print axioms frame486_eq
#print axioms slim486_eq
end InitECandidate.Proofs.StackAnalysis
