import InitECandidate.Proofs.StackAnalysis.Data214
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
def frame214 : Nat := 0
def slim214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 208) List.nil Option.none
theorem frame214_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized214.2.1 optimized214.2.2 = frame214 := by cbv
theorem slim214_eq : WordDepth.Executable.slim optimized214.2.2 = slim214 := by cbv
theorem frameEntry214_eq : frameEntry optimized214 = (214, frame214) := by
  unfold frameEntry
  rw [frame214_eq]
  rfl
theorem slimEntry214_eq : slimEntry optimized214 = (214, 5, slim214) := by
  unfold slimEntry
  rw [slim214_eq]
  rfl
#print axioms frame214_eq
#print axioms slim214_eq
end InitECandidate.Proofs.StackAnalysis
