import InitECandidate.Proofs.StackAnalysis.Data92
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
def frame92 : Nat := 0
def slim92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame92_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized92.2.1 optimized92.2.2 = frame92 := by cbv
theorem slim92_eq : WordDepth.Executable.slim optimized92.2.2 = slim92 := by cbv
theorem frameEntry92_eq : frameEntry optimized92 = (92, frame92) := by
  unfold frameEntry
  rw [frame92_eq]
  rfl
theorem slimEntry92_eq : slimEntry optimized92 = (92, 3, slim92) := by
  unfold slimEntry
  rw [slim92_eq]
  rfl
#print axioms frame92_eq
#print axioms slim92_eq
end InitECandidate.Proofs.StackAnalysis
