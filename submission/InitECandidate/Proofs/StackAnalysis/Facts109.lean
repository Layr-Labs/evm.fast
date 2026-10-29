import InitECandidate.Proofs.StackAnalysis.Data109
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
def frame109 : Nat := 0
def slim109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 108) List.nil Option.none
theorem frame109_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized109.2.1 optimized109.2.2 = frame109 := by cbv
theorem slim109_eq : WordDepth.Executable.slim optimized109.2.2 = slim109 := by cbv
theorem frameEntry109_eq : frameEntry optimized109 = (109, frame109) := by
  unfold frameEntry
  rw [frame109_eq]
  rfl
theorem slimEntry109_eq : slimEntry optimized109 = (109, 9, slim109) := by
  unfold slimEntry
  rw [slim109_eq]
  rfl
#print axioms frame109_eq
#print axioms slim109_eq
end InitECandidate.Proofs.StackAnalysis
