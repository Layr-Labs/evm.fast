import InitECandidate.Proofs.StackAnalysis.Data83
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
def frame83 : Nat := 0
def slim83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame83_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized83.2.1 optimized83.2.2 = frame83 := by cbv
theorem slim83_eq : WordDepth.Executable.slim optimized83.2.2 = slim83 := by cbv
theorem frameEntry83_eq : frameEntry optimized83 = (83, frame83) := by
  unfold frameEntry
  rw [frame83_eq]
  rfl
theorem slimEntry83_eq : slimEntry optimized83 = (83, 2, slim83) := by
  unfold slimEntry
  rw [slim83_eq]
  rfl
#print axioms frame83_eq
#print axioms slim83_eq
end InitECandidate.Proofs.StackAnalysis
