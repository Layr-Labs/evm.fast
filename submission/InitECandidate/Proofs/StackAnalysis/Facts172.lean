import InitECandidate.Proofs.StackAnalysis.Data172
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
def frame172 : Nat := 0
def slim172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame172_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized172.2.1 optimized172.2.2 = frame172 := by cbv
theorem slim172_eq : WordDepth.Executable.slim optimized172.2.2 = slim172 := by cbv
theorem frameEntry172_eq : frameEntry optimized172 = (172, frame172) := by
  unfold frameEntry
  rw [frame172_eq]
  rfl
theorem slimEntry172_eq : slimEntry optimized172 = (172, 2, slim172) := by
  unfold slimEntry
  rw [slim172_eq]
  rfl
#print axioms frame172_eq
#print axioms slim172_eq
end InitECandidate.Proofs.StackAnalysis
