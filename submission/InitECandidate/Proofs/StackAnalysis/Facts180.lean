import InitECandidate.Proofs.StackAnalysis.Data180
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
def frame180 : Nat := 0
def slim180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 175) List.nil Option.none
theorem frame180_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized180.2.1 optimized180.2.2 = frame180 := by cbv
theorem slim180_eq : WordDepth.Executable.slim optimized180.2.2 = slim180 := by cbv
theorem frameEntry180_eq : frameEntry optimized180 = (180, frame180) := by
  unfold frameEntry
  rw [frame180_eq]
  rfl
theorem slimEntry180_eq : slimEntry optimized180 = (180, 2, slim180) := by
  unfold slimEntry
  rw [slim180_eq]
  rfl
#print axioms frame180_eq
#print axioms slim180_eq
end InitECandidate.Proofs.StackAnalysis
