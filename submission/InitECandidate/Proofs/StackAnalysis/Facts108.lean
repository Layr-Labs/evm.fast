import InitECandidate.Proofs.StackAnalysis.Data108
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
def frame108 : Nat := 0
def slim108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame108_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized108.2.1 optimized108.2.2 = frame108 := by cbv
theorem slim108_eq : WordDepth.Executable.slim optimized108.2.2 = slim108 := by cbv
theorem frameEntry108_eq : frameEntry optimized108 = (108, frame108) := by
  unfold frameEntry
  rw [frame108_eq]
  rfl
theorem slimEntry108_eq : slimEntry optimized108 = (108, 9, slim108) := by
  unfold slimEntry
  rw [slim108_eq]
  rfl
#print axioms frame108_eq
#print axioms slim108_eq
end InitECandidate.Proofs.StackAnalysis
