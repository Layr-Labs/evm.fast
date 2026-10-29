import InitECandidate.Proofs.StackAnalysis.Data463
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
def frame463 : Nat := 0
def slim463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame463_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized463.2.1 optimized463.2.2 = frame463 := by cbv
theorem slim463_eq : WordDepth.Executable.slim optimized463.2.2 = slim463 := by cbv
theorem frameEntry463_eq : frameEntry optimized463 = (463, frame463) := by
  unfold frameEntry
  rw [frame463_eq]
  rfl
theorem slimEntry463_eq : slimEntry optimized463 = (463, 3, slim463) := by
  unfold slimEntry
  rw [slim463_eq]
  rfl
#print axioms frame463_eq
#print axioms slim463_eq
end InitECandidate.Proofs.StackAnalysis
