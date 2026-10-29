import InitECandidate.Proofs.StackAnalysis.Data820
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
def frame820 : Nat := 0
def slim820 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame820_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized820.2.1 optimized820.2.2 = frame820 := by cbv
theorem slim820_eq : WordDepth.Executable.slim optimized820.2.2 = slim820 := by cbv
theorem frameEntry820_eq : frameEntry optimized820 = (820, frame820) := by
  unfold frameEntry
  rw [frame820_eq]
  rfl
theorem slimEntry820_eq : slimEntry optimized820 = (820, 2, slim820) := by
  unfold slimEntry
  rw [slim820_eq]
  rfl
#print axioms frame820_eq
#print axioms slim820_eq
end InitECandidate.Proofs.StackAnalysis
