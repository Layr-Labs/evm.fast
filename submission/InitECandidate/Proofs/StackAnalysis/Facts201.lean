import InitECandidate.Proofs.StackAnalysis.Data201
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
def frame201 : Nat := 0
def slim201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame201_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized201.2.1 optimized201.2.2 = frame201 := by cbv
theorem slim201_eq : WordDepth.Executable.slim optimized201.2.2 = slim201 := by cbv
theorem frameEntry201_eq : frameEntry optimized201 = (201, frame201) := by
  unfold frameEntry
  rw [frame201_eq]
  rfl
theorem slimEntry201_eq : slimEntry optimized201 = (201, 1, slim201) := by
  unfold slimEntry
  rw [slim201_eq]
  rfl
#print axioms frame201_eq
#print axioms slim201_eq
end InitECandidate.Proofs.StackAnalysis
