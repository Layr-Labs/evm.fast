import InitECandidate.Proofs.StackAnalysis.Data609
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
def frame609 : Nat := 0
def slim609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame609_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized609.2.1 optimized609.2.2 = frame609 := by cbv
theorem slim609_eq : WordDepth.Executable.slim optimized609.2.2 = slim609 := by cbv
theorem frameEntry609_eq : frameEntry optimized609 = (609, frame609) := by
  unfold frameEntry
  rw [frame609_eq]
  rfl
theorem slimEntry609_eq : slimEntry optimized609 = (609, 2, slim609) := by
  unfold slimEntry
  rw [slim609_eq]
  rfl
#print axioms frame609_eq
#print axioms slim609_eq
end InitECandidate.Proofs.StackAnalysis
