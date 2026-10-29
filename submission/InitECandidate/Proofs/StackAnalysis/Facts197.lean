import InitECandidate.Proofs.StackAnalysis.Data197
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
def frame197 : Nat := 0
def slim197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame197_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized197.2.1 optimized197.2.2 = frame197 := by cbv
theorem slim197_eq : WordDepth.Executable.slim optimized197.2.2 = slim197 := by cbv
theorem frameEntry197_eq : frameEntry optimized197 = (197, frame197) := by
  unfold frameEntry
  rw [frame197_eq]
  rfl
theorem slimEntry197_eq : slimEntry optimized197 = (197, 3, slim197) := by
  unfold slimEntry
  rw [slim197_eq]
  rfl
#print axioms frame197_eq
#print axioms slim197_eq
end InitECandidate.Proofs.StackAnalysis
