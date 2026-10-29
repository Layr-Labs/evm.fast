import InitECandidate.Proofs.StackAnalysis.Data767
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
def frame767 : Nat := 0
def slim767 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 705) List.nil Option.none
theorem frame767_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized767.2.1 optimized767.2.2 = frame767 := by cbv
theorem slim767_eq : WordDepth.Executable.slim optimized767.2.2 = slim767 := by cbv
theorem frameEntry767_eq : frameEntry optimized767 = (767, frame767) := by
  unfold frameEntry
  rw [frame767_eq]
  rfl
theorem slimEntry767_eq : slimEntry optimized767 = (767, 2, slim767) := by
  unfold slimEntry
  rw [slim767_eq]
  rfl
#print axioms frame767_eq
#print axioms slim767_eq
end InitECandidate.Proofs.StackAnalysis
