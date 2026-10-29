import InitECandidate.Proofs.StackAnalysis.Data326
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
def frame326 : Nat := 0
def slim326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 179) List.nil Option.none
theorem frame326_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized326.2.1 optimized326.2.2 = frame326 := by cbv
theorem slim326_eq : WordDepth.Executable.slim optimized326.2.2 = slim326 := by cbv
theorem frameEntry326_eq : frameEntry optimized326 = (326, frame326) := by
  unfold frameEntry
  rw [frame326_eq]
  rfl
theorem slimEntry326_eq : slimEntry optimized326 = (326, 3, slim326) := by
  unfold slimEntry
  rw [slim326_eq]
  rfl
#print axioms frame326_eq
#print axioms slim326_eq
end InitECandidate.Proofs.StackAnalysis
