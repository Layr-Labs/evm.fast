import InitECandidate.Proofs.StackAnalysis.Data351
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
def frame351 : Nat := 0
def slim351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame351_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized351.2.1 optimized351.2.2 = frame351 := by cbv
theorem slim351_eq : WordDepth.Executable.slim optimized351.2.2 = slim351 := by cbv
theorem frameEntry351_eq : frameEntry optimized351 = (351, frame351) := by
  unfold frameEntry
  rw [frame351_eq]
  rfl
theorem slimEntry351_eq : slimEntry optimized351 = (351, 2, slim351) := by
  unfold slimEntry
  rw [slim351_eq]
  rfl
#print axioms frame351_eq
#print axioms slim351_eq
end InitECandidate.Proofs.StackAnalysis
