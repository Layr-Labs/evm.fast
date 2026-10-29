import InitECandidate.Proofs.StackAnalysis.Data717
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
def frame717 : Nat := 0
def slim717 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 714) List.nil Option.none
theorem frame717_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized717.2.1 optimized717.2.2 = frame717 := by cbv
theorem slim717_eq : WordDepth.Executable.slim optimized717.2.2 = slim717 := by cbv
theorem frameEntry717_eq : frameEntry optimized717 = (717, frame717) := by
  unfold frameEntry
  rw [frame717_eq]
  rfl
theorem slimEntry717_eq : slimEntry optimized717 = (717, 7, slim717) := by
  unfold slimEntry
  rw [slim717_eq]
  rfl
#print axioms frame717_eq
#print axioms slim717_eq
end InitECandidate.Proofs.StackAnalysis
