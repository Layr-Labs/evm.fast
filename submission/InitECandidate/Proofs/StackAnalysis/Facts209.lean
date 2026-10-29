import InitECandidate.Proofs.StackAnalysis.Data209
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
def frame209 : Nat := 0
def slim209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 208) List.nil Option.none
theorem frame209_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized209.2.1 optimized209.2.2 = frame209 := by cbv
theorem slim209_eq : WordDepth.Executable.slim optimized209.2.2 = slim209 := by cbv
theorem frameEntry209_eq : frameEntry optimized209 = (209, frame209) := by
  unfold frameEntry
  rw [frame209_eq]
  rfl
theorem slimEntry209_eq : slimEntry optimized209 = (209, 5, slim209) := by
  unfold slimEntry
  rw [slim209_eq]
  rfl
#print axioms frame209_eq
#print axioms slim209_eq
end InitECandidate.Proofs.StackAnalysis
