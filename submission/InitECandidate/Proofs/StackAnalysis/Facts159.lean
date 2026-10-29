import InitECandidate.Proofs.StackAnalysis.Data159
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
def frame159 : Nat := 0
def slim159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame159_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized159.2.1 optimized159.2.2 = frame159 := by cbv
theorem slim159_eq : WordDepth.Executable.slim optimized159.2.2 = slim159 := by cbv
theorem frameEntry159_eq : frameEntry optimized159 = (159, frame159) := by
  unfold frameEntry
  rw [frame159_eq]
  rfl
theorem slimEntry159_eq : slimEntry optimized159 = (159, 2, slim159) := by
  unfold slimEntry
  rw [slim159_eq]
  rfl
#print axioms frame159_eq
#print axioms slim159_eq
end InitECandidate.Proofs.StackAnalysis
