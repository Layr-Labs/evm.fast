import InitECandidate.Proofs.StackAnalysis.Data115
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
def frame115 : Nat := 0
def slim115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame115_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized115.2.1 optimized115.2.2 = frame115 := by cbv
theorem slim115_eq : WordDepth.Executable.slim optimized115.2.2 = slim115 := by cbv
theorem frameEntry115_eq : frameEntry optimized115 = (115, frame115) := by
  unfold frameEntry
  rw [frame115_eq]
  rfl
theorem slimEntry115_eq : slimEntry optimized115 = (115, 9, slim115) := by
  unfold slimEntry
  rw [slim115_eq]
  rfl
#print axioms frame115_eq
#print axioms slim115_eq
end InitECandidate.Proofs.StackAnalysis
