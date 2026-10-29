import InitECandidate.Proofs.StackAnalysis.Data185
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
def frame185 : Nat := 0
def slim185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame185_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized185.2.1 optimized185.2.2 = frame185 := by cbv
theorem slim185_eq : WordDepth.Executable.slim optimized185.2.2 = slim185 := by cbv
theorem frameEntry185_eq : frameEntry optimized185 = (185, frame185) := by
  unfold frameEntry
  rw [frame185_eq]
  rfl
theorem slimEntry185_eq : slimEntry optimized185 = (185, 3, slim185) := by
  unfold slimEntry
  rw [slim185_eq]
  rfl
#print axioms frame185_eq
#print axioms slim185_eq
end InitECandidate.Proofs.StackAnalysis
