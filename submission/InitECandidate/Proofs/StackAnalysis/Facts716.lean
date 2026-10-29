import InitECandidate.Proofs.StackAnalysis.Data716
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
def frame716 : Nat := 0
def slim716 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 714) List.nil Option.none
theorem frame716_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized716.2.1 optimized716.2.2 = frame716 := by cbv
theorem slim716_eq : WordDepth.Executable.slim optimized716.2.2 = slim716 := by cbv
theorem frameEntry716_eq : frameEntry optimized716 = (716, frame716) := by
  unfold frameEntry
  rw [frame716_eq]
  rfl
theorem slimEntry716_eq : slimEntry optimized716 = (716, 7, slim716) := by
  unfold slimEntry
  rw [slim716_eq]
  rfl
#print axioms frame716_eq
#print axioms slim716_eq
end InitECandidate.Proofs.StackAnalysis
