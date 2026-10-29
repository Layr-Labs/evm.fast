import InitECandidate.Proofs.StackAnalysis.Data572
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
def frame572 : Nat := 0
def slim572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame572_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized572.2.1 optimized572.2.2 = frame572 := by cbv
theorem slim572_eq : WordDepth.Executable.slim optimized572.2.2 = slim572 := by cbv
theorem frameEntry572_eq : frameEntry optimized572 = (572, frame572) := by
  unfold frameEntry
  rw [frame572_eq]
  rfl
theorem slimEntry572_eq : slimEntry optimized572 = (572, 1, slim572) := by
  unfold slimEntry
  rw [slim572_eq]
  rfl
#print axioms frame572_eq
#print axioms slim572_eq
end InitECandidate.Proofs.StackAnalysis
