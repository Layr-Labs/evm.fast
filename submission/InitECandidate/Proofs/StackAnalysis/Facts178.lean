import InitECandidate.Proofs.StackAnalysis.Data178
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
def frame178 : Nat := 0
def slim178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 174) List.nil Option.none
theorem frame178_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized178.2.1 optimized178.2.2 = frame178 := by cbv
theorem slim178_eq : WordDepth.Executable.slim optimized178.2.2 = slim178 := by cbv
theorem frameEntry178_eq : frameEntry optimized178 = (178, frame178) := by
  unfold frameEntry
  rw [frame178_eq]
  rfl
theorem slimEntry178_eq : slimEntry optimized178 = (178, 3, slim178) := by
  unfold slimEntry
  rw [slim178_eq]
  rfl
#print axioms frame178_eq
#print axioms slim178_eq
end InitECandidate.Proofs.StackAnalysis
