import InitECandidate.Proofs.StackAnalysis.Data80
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
def frame80 : Nat := 0
def slim80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame80_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized80.2.1 optimized80.2.2 = frame80 := by cbv
theorem slim80_eq : WordDepth.Executable.slim optimized80.2.2 = slim80 := by cbv
theorem frameEntry80_eq : frameEntry optimized80 = (80, frame80) := by
  unfold frameEntry
  rw [frame80_eq]
  rfl
theorem slimEntry80_eq : slimEntry optimized80 = (80, 3, slim80) := by
  unfold slimEntry
  rw [slim80_eq]
  rfl
#print axioms frame80_eq
#print axioms slim80_eq
end InitECandidate.Proofs.StackAnalysis
