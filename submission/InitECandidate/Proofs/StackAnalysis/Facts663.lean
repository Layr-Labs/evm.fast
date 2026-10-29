import InitECandidate.Proofs.StackAnalysis.Data663
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
def frame663 : Nat := 0
def slim663 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 661) List.nil Option.none
theorem frame663_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized663.2.1 optimized663.2.2 = frame663 := by cbv
theorem slim663_eq : WordDepth.Executable.slim optimized663.2.2 = slim663 := by cbv
theorem frameEntry663_eq : frameEntry optimized663 = (663, frame663) := by
  unfold frameEntry
  rw [frame663_eq]
  rfl
theorem slimEntry663_eq : slimEntry optimized663 = (663, 5, slim663) := by
  unfold slimEntry
  rw [slim663_eq]
  rfl
#print axioms frame663_eq
#print axioms slim663_eq
end InitECandidate.Proofs.StackAnalysis
