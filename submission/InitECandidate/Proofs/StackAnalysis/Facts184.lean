import InitECandidate.Proofs.StackAnalysis.Data184
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
def frame184 : Nat := 0
def slim184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame184_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized184.2.1 optimized184.2.2 = frame184 := by cbv
theorem slim184_eq : WordDepth.Executable.slim optimized184.2.2 = slim184 := by cbv
theorem frameEntry184_eq : frameEntry optimized184 = (184, frame184) := by
  unfold frameEntry
  rw [frame184_eq]
  rfl
theorem slimEntry184_eq : slimEntry optimized184 = (184, 4, slim184) := by
  unfold slimEntry
  rw [slim184_eq]
  rfl
#print axioms frame184_eq
#print axioms slim184_eq
end InitECandidate.Proofs.StackAnalysis
