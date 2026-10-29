import InitECandidate.Proofs.StackAnalysis.Data725
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
def frame725 : Nat := 29
def slim725 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame725_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized725.2.1 optimized725.2.2 = frame725 := by cbv
theorem slim725_eq : WordDepth.Executable.slim optimized725.2.2 = slim725 := by cbv
theorem frameEntry725_eq : frameEntry optimized725 = (725, frame725) := by
  unfold frameEntry
  rw [frame725_eq]
  rfl
theorem slimEntry725_eq : slimEntry optimized725 = (725, 2, slim725) := by
  unfold slimEntry
  rw [slim725_eq]
  rfl
#print axioms frame725_eq
#print axioms slim725_eq
end InitECandidate.Proofs.StackAnalysis
