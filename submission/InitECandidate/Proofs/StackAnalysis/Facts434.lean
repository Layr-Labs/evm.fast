import InitECandidate.Proofs.StackAnalysis.Data434
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
def frame434 : Nat := 0
def slim434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame434_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized434.2.1 optimized434.2.2 = frame434 := by cbv
theorem slim434_eq : WordDepth.Executable.slim optimized434.2.2 = slim434 := by cbv
theorem frameEntry434_eq : frameEntry optimized434 = (434, frame434) := by
  unfold frameEntry
  rw [frame434_eq]
  rfl
theorem slimEntry434_eq : slimEntry optimized434 = (434, 2, slim434) := by
  unfold slimEntry
  rw [slim434_eq]
  rfl
#print axioms frame434_eq
#print axioms slim434_eq
end InitECandidate.Proofs.StackAnalysis
