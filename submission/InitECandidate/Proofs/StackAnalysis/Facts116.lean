import InitECandidate.Proofs.StackAnalysis.Data116
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
def frame116 : Nat := 0
def slim116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame116_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized116.2.1 optimized116.2.2 = frame116 := by cbv
theorem slim116_eq : WordDepth.Executable.slim optimized116.2.2 = slim116 := by cbv
theorem frameEntry116_eq : frameEntry optimized116 = (116, frame116) := by
  unfold frameEntry
  rw [frame116_eq]
  rfl
theorem slimEntry116_eq : slimEntry optimized116 = (116, 9, slim116) := by
  unfold slimEntry
  rw [slim116_eq]
  rfl
#print axioms frame116_eq
#print axioms slim116_eq
end InitECandidate.Proofs.StackAnalysis
