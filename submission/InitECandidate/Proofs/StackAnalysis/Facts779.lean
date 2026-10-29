import InitECandidate.Proofs.StackAnalysis.Data779
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
def frame779 : Nat := 0
def slim779 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 732) List.nil Option.none
theorem frame779_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized779.2.1 optimized779.2.2 = frame779 := by cbv
theorem slim779_eq : WordDepth.Executable.slim optimized779.2.2 = slim779 := by cbv
theorem frameEntry779_eq : frameEntry optimized779 = (779, frame779) := by
  unfold frameEntry
  rw [frame779_eq]
  rfl
theorem slimEntry779_eq : slimEntry optimized779 = (779, 2, slim779) := by
  unfold slimEntry
  rw [slim779_eq]
  rfl
#print axioms frame779_eq
#print axioms slim779_eq
end InitECandidate.Proofs.StackAnalysis
