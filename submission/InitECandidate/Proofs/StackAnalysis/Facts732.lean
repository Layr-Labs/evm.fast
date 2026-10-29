import InitECandidate.Proofs.StackAnalysis.Data732
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
def frame732 : Nat := 0
def slim732 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame732_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized732.2.1 optimized732.2.2 = frame732 := by cbv
theorem slim732_eq : WordDepth.Executable.slim optimized732.2.2 = slim732 := by cbv
theorem frameEntry732_eq : frameEntry optimized732 = (732, frame732) := by
  unfold frameEntry
  rw [frame732_eq]
  rfl
theorem slimEntry732_eq : slimEntry optimized732 = (732, 2, slim732) := by
  unfold slimEntry
  rw [slim732_eq]
  rfl
#print axioms frame732_eq
#print axioms slim732_eq
end InitECandidate.Proofs.StackAnalysis
