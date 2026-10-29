import InitECandidate.Proofs.StackAnalysis.Data122
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
def frame122 : Nat := 0
def slim122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame122_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized122.2.1 optimized122.2.2 = frame122 := by cbv
theorem slim122_eq : WordDepth.Executable.slim optimized122.2.2 = slim122 := by cbv
theorem frameEntry122_eq : frameEntry optimized122 = (122, frame122) := by
  unfold frameEntry
  rw [frame122_eq]
  rfl
theorem slimEntry122_eq : slimEntry optimized122 = (122, 2, slim122) := by
  unfold slimEntry
  rw [slim122_eq]
  rfl
#print axioms frame122_eq
#print axioms slim122_eq
end InitECandidate.Proofs.StackAnalysis
