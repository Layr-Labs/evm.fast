import InitECandidate.Proofs.StackAnalysis.Data323
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
def frame323 : Nat := 0
def slim323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame323_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized323.2.1 optimized323.2.2 = frame323 := by cbv
theorem slim323_eq : WordDepth.Executable.slim optimized323.2.2 = slim323 := by cbv
theorem frameEntry323_eq : frameEntry optimized323 = (323, frame323) := by
  unfold frameEntry
  rw [frame323_eq]
  rfl
theorem slimEntry323_eq : slimEntry optimized323 = (323, 2, slim323) := by
  unfold slimEntry
  rw [slim323_eq]
  rfl
#print axioms frame323_eq
#print axioms slim323_eq
end InitECandidate.Proofs.StackAnalysis
