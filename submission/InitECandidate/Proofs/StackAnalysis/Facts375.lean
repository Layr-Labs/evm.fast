import InitECandidate.Proofs.StackAnalysis.Data375
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
def frame375 : Nat := 0
def slim375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 370) List.nil Option.none
theorem frame375_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized375.2.1 optimized375.2.2 = frame375 := by cbv
theorem slim375_eq : WordDepth.Executable.slim optimized375.2.2 = slim375 := by cbv
theorem frameEntry375_eq : frameEntry optimized375 = (375, frame375) := by
  unfold frameEntry
  rw [frame375_eq]
  rfl
theorem slimEntry375_eq : slimEntry optimized375 = (375, 3, slim375) := by
  unfold slimEntry
  rw [slim375_eq]
  rfl
#print axioms frame375_eq
#print axioms slim375_eq
end InitECandidate.Proofs.StackAnalysis
