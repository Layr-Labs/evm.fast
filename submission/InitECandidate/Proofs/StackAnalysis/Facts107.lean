import InitECandidate.Proofs.StackAnalysis.Data107
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
def frame107 : Nat := 0
def slim107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 106) List.nil Option.none
theorem frame107_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized107.2.1 optimized107.2.2 = frame107 := by cbv
theorem slim107_eq : WordDepth.Executable.slim optimized107.2.2 = slim107 := by cbv
theorem frameEntry107_eq : frameEntry optimized107 = (107, frame107) := by
  unfold frameEntry
  rw [frame107_eq]
  rfl
theorem slimEntry107_eq : slimEntry optimized107 = (107, 9, slim107) := by
  unfold slimEntry
  rw [slim107_eq]
  rfl
#print axioms frame107_eq
#print axioms slim107_eq
end InitECandidate.Proofs.StackAnalysis
