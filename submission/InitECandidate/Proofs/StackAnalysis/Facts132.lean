import InitECandidate.Proofs.StackAnalysis.Data132
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
def frame132 : Nat := 0
def slim132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 118) List.nil Option.none
theorem frame132_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized132.2.1 optimized132.2.2 = frame132 := by cbv
theorem slim132_eq : WordDepth.Executable.slim optimized132.2.2 = slim132 := by cbv
theorem frameEntry132_eq : frameEntry optimized132 = (132, frame132) := by
  unfold frameEntry
  rw [frame132_eq]
  rfl
theorem slimEntry132_eq : slimEntry optimized132 = (132, 5, slim132) := by
  unfold slimEntry
  rw [slim132_eq]
  rfl
#print axioms frame132_eq
#print axioms slim132_eq
end InitECandidate.Proofs.StackAnalysis
