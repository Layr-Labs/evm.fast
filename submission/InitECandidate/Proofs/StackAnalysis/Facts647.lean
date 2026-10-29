import InitECandidate.Proofs.StackAnalysis.Data647
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
def frame647 : Nat := 0
def slim647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 210) List.nil Option.none
theorem frame647_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized647.2.1 optimized647.2.2 = frame647 := by cbv
theorem slim647_eq : WordDepth.Executable.slim optimized647.2.2 = slim647 := by cbv
theorem frameEntry647_eq : frameEntry optimized647 = (647, frame647) := by
  unfold frameEntry
  rw [frame647_eq]
  rfl
theorem slimEntry647_eq : slimEntry optimized647 = (647, 5, slim647) := by
  unfold slimEntry
  rw [slim647_eq]
  rfl
#print axioms frame647_eq
#print axioms slim647_eq
end InitECandidate.Proofs.StackAnalysis
