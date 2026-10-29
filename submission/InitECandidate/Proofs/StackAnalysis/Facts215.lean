import InitECandidate.Proofs.StackAnalysis.Data215
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
def frame215 : Nat := 0
def slim215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 136) List.nil Option.none
theorem frame215_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized215.2.1 optimized215.2.2 = frame215 := by cbv
theorem slim215_eq : WordDepth.Executable.slim optimized215.2.2 = slim215 := by cbv
theorem frameEntry215_eq : frameEntry optimized215 = (215, frame215) := by
  unfold frameEntry
  rw [frame215_eq]
  rfl
theorem slimEntry215_eq : slimEntry optimized215 = (215, 9, slim215) := by
  unfold slimEntry
  rw [slim215_eq]
  rfl
#print axioms frame215_eq
#print axioms slim215_eq
end InitECandidate.Proofs.StackAnalysis
