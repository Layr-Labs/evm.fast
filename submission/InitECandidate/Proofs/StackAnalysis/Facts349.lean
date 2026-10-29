import InitECandidate.Proofs.StackAnalysis.Data349
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
def frame349 : Nat := 0
def slim349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame349_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized349.2.1 optimized349.2.2 = frame349 := by cbv
theorem slim349_eq : WordDepth.Executable.slim optimized349.2.2 = slim349 := by cbv
theorem frameEntry349_eq : frameEntry optimized349 = (349, frame349) := by
  unfold frameEntry
  rw [frame349_eq]
  rfl
theorem slimEntry349_eq : slimEntry optimized349 = (349, 2, slim349) := by
  unfold slimEntry
  rw [slim349_eq]
  rfl
#print axioms frame349_eq
#print axioms slim349_eq
end InitECandidate.Proofs.StackAnalysis
