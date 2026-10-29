import InitECandidate.Proofs.StackAnalysis.Data662
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
def frame662 : Nat := 0
def slim662 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 661) List.nil Option.none
theorem frame662_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized662.2.1 optimized662.2.2 = frame662 := by cbv
theorem slim662_eq : WordDepth.Executable.slim optimized662.2.2 = slim662 := by cbv
theorem frameEntry662_eq : frameEntry optimized662 = (662, frame662) := by
  unfold frameEntry
  rw [frame662_eq]
  rfl
theorem slimEntry662_eq : slimEntry optimized662 = (662, 5, slim662) := by
  unfold slimEntry
  rw [slim662_eq]
  rfl
#print axioms frame662_eq
#print axioms slim662_eq
end InitECandidate.Proofs.StackAnalysis
