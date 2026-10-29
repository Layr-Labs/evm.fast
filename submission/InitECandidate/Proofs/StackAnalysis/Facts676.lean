import InitECandidate.Proofs.StackAnalysis.Data676
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
def frame676 : Nat := 0
def slim676 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 80) List.nil Option.none
theorem frame676_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized676.2.1 optimized676.2.2 = frame676 := by cbv
theorem slim676_eq : WordDepth.Executable.slim optimized676.2.2 = slim676 := by cbv
theorem frameEntry676_eq : frameEntry optimized676 = (676, frame676) := by
  unfold frameEntry
  rw [frame676_eq]
  rfl
theorem slimEntry676_eq : slimEntry optimized676 = (676, 3, slim676) := by
  unfold slimEntry
  rw [slim676_eq]
  rfl
#print axioms frame676_eq
#print axioms slim676_eq
end InitECandidate.Proofs.StackAnalysis
