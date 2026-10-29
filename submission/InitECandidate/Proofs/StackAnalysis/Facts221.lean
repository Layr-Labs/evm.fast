import InitECandidate.Proofs.StackAnalysis.Data221
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
def frame221 : Nat := 0
def slim221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame221_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized221.2.1 optimized221.2.2 = frame221 := by cbv
theorem slim221_eq : WordDepth.Executable.slim optimized221.2.2 = slim221 := by cbv
theorem frameEntry221_eq : frameEntry optimized221 = (221, frame221) := by
  unfold frameEntry
  rw [frame221_eq]
  rfl
theorem slimEntry221_eq : slimEntry optimized221 = (221, 10, slim221) := by
  unfold slimEntry
  rw [slim221_eq]
  rfl
#print axioms frame221_eq
#print axioms slim221_eq
end InitECandidate.Proofs.StackAnalysis
