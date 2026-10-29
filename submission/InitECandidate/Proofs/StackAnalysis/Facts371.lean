import InitECandidate.Proofs.StackAnalysis.Data371
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
def frame371 : Nat := 0
def slim371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 370) List.nil Option.none
theorem frame371_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized371.2.1 optimized371.2.2 = frame371 := by cbv
theorem slim371_eq : WordDepth.Executable.slim optimized371.2.2 = slim371 := by cbv
theorem frameEntry371_eq : frameEntry optimized371 = (371, frame371) := by
  unfold frameEntry
  rw [frame371_eq]
  rfl
theorem slimEntry371_eq : slimEntry optimized371 = (371, 3, slim371) := by
  unfold slimEntry
  rw [slim371_eq]
  rfl
#print axioms frame371_eq
#print axioms slim371_eq
end InitECandidate.Proofs.StackAnalysis
