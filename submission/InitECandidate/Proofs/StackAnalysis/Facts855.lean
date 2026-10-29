import InitECandidate.Proofs.StackAnalysis.Data855
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
def frame855 : Nat := 0
def slim855 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame855_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized855.2.1 optimized855.2.2 = frame855 := by cbv
theorem slim855_eq : WordDepth.Executable.slim optimized855.2.2 = slim855 := by cbv
theorem frameEntry855_eq : frameEntry optimized855 = (855, frame855) := by
  unfold frameEntry
  rw [frame855_eq]
  rfl
theorem slimEntry855_eq : slimEntry optimized855 = (855, 2, slim855) := by
  unfold slimEntry
  rw [slim855_eq]
  rfl
#print axioms frame855_eq
#print axioms slim855_eq
end InitECandidate.Proofs.StackAnalysis
