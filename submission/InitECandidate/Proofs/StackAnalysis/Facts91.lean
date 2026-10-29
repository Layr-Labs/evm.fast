import InitECandidate.Proofs.StackAnalysis.Data91
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
def frame91 : Nat := 0
def slim91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame91_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized91.2.1 optimized91.2.2 = frame91 := by cbv
theorem slim91_eq : WordDepth.Executable.slim optimized91.2.2 = slim91 := by cbv
theorem frameEntry91_eq : frameEntry optimized91 = (91, frame91) := by
  unfold frameEntry
  rw [frame91_eq]
  rfl
theorem slimEntry91_eq : slimEntry optimized91 = (91, 3, slim91) := by
  unfold slimEntry
  rw [slim91_eq]
  rfl
#print axioms frame91_eq
#print axioms slim91_eq
end InitECandidate.Proofs.StackAnalysis
