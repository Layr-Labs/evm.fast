import InitECandidate.Proofs.StackAnalysis.Data150
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
def frame150 : Nat := 0
def slim150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame150_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized150.2.1 optimized150.2.2 = frame150 := by cbv
theorem slim150_eq : WordDepth.Executable.slim optimized150.2.2 = slim150 := by cbv
theorem frameEntry150_eq : frameEntry optimized150 = (150, frame150) := by
  unfold frameEntry
  rw [frame150_eq]
  rfl
theorem slimEntry150_eq : slimEntry optimized150 = (150, 2, slim150) := by
  unfold slimEntry
  rw [slim150_eq]
  rfl
#print axioms frame150_eq
#print axioms slim150_eq
end InitECandidate.Proofs.StackAnalysis
