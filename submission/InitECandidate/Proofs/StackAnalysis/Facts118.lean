import InitECandidate.Proofs.StackAnalysis.Data118
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
def frame118 : Nat := 0
def slim118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame118_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized118.2.1 optimized118.2.2 = frame118 := by cbv
theorem slim118_eq : WordDepth.Executable.slim optimized118.2.2 = slim118 := by cbv
theorem frameEntry118_eq : frameEntry optimized118 = (118, frame118) := by
  unfold frameEntry
  rw [frame118_eq]
  rfl
theorem slimEntry118_eq : slimEntry optimized118 = (118, 5, slim118) := by
  unfold slimEntry
  rw [slim118_eq]
  rfl
#print axioms frame118_eq
#print axioms slim118_eq
end InitECandidate.Proofs.StackAnalysis
