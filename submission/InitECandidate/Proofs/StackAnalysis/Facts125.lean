import InitECandidate.Proofs.StackAnalysis.Data125
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
def frame125 : Nat := 0
def slim125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame125_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized125.2.1 optimized125.2.2 = frame125 := by cbv
theorem slim125_eq : WordDepth.Executable.slim optimized125.2.2 = slim125 := by cbv
theorem frameEntry125_eq : frameEntry optimized125 = (125, frame125) := by
  unfold frameEntry
  rw [frame125_eq]
  rfl
theorem slimEntry125_eq : slimEntry optimized125 = (125, 2, slim125) := by
  unfold slimEntry
  rw [slim125_eq]
  rfl
#print axioms frame125_eq
#print axioms slim125_eq
end InitECandidate.Proofs.StackAnalysis
