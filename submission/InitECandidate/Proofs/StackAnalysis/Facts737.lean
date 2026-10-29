import InitECandidate.Proofs.StackAnalysis.Data737
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
def frame737 : Nat := 0
def slim737 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 734) List.nil Option.none
theorem frame737_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized737.2.1 optimized737.2.2 = frame737 := by cbv
theorem slim737_eq : WordDepth.Executable.slim optimized737.2.2 = slim737 := by cbv
theorem frameEntry737_eq : frameEntry optimized737 = (737, frame737) := by
  unfold frameEntry
  rw [frame737_eq]
  rfl
theorem slimEntry737_eq : slimEntry optimized737 = (737, 3, slim737) := by
  unfold slimEntry
  rw [slim737_eq]
  rfl
#print axioms frame737_eq
#print axioms slim737_eq
end InitECandidate.Proofs.StackAnalysis
