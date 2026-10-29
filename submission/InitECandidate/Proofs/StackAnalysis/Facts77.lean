import InitECandidate.Proofs.StackAnalysis.Data77
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
def frame77 : Nat := 0
def slim77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame77_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized77.2.1 optimized77.2.2 = frame77 := by cbv
theorem slim77_eq : WordDepth.Executable.slim optimized77.2.2 = slim77 := by cbv
theorem frameEntry77_eq : frameEntry optimized77 = (77, frame77) := by
  unfold frameEntry
  rw [frame77_eq]
  rfl
theorem slimEntry77_eq : slimEntry optimized77 = (77, 4, slim77) := by
  unfold slimEntry
  rw [slim77_eq]
  rfl
#print axioms frame77_eq
#print axioms slim77_eq
end InitECandidate.Proofs.StackAnalysis
