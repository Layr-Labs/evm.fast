import InitECandidate.Proofs.StackAnalysis.Data156
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
def frame156 : Nat := 18
def slim156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame156_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized156.2.1 optimized156.2.2 = frame156 := by cbv
theorem slim156_eq : WordDepth.Executable.slim optimized156.2.2 = slim156 := by cbv
theorem frameEntry156_eq : frameEntry optimized156 = (156, frame156) := by
  unfold frameEntry
  rw [frame156_eq]
  rfl
theorem slimEntry156_eq : slimEntry optimized156 = (156, 2, slim156) := by
  unfold slimEntry
  rw [slim156_eq]
  rfl
#print axioms frame156_eq
#print axioms slim156_eq
end InitECandidate.Proofs.StackAnalysis
