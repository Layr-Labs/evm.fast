import InitECandidate.Proofs.StackAnalysis.Data628
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
def frame628 : Nat := 0
def slim628 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame628_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized628.2.1 optimized628.2.2 = frame628 := by cbv
theorem slim628_eq : WordDepth.Executable.slim optimized628.2.2 = slim628 := by cbv
theorem frameEntry628_eq : frameEntry optimized628 = (628, frame628) := by
  unfold frameEntry
  rw [frame628_eq]
  rfl
theorem slimEntry628_eq : slimEntry optimized628 = (628, 2, slim628) := by
  unfold slimEntry
  rw [slim628_eq]
  rfl
#print axioms frame628_eq
#print axioms slim628_eq
end InitECandidate.Proofs.StackAnalysis
