import InitECandidate.Proofs.StackAnalysis.Data368
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
def frame368 : Nat := 0
def slim368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 367) List.nil Option.none
theorem frame368_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized368.2.1 optimized368.2.2 = frame368 := by cbv
theorem slim368_eq : WordDepth.Executable.slim optimized368.2.2 = slim368 := by cbv
theorem frameEntry368_eq : frameEntry optimized368 = (368, frame368) := by
  unfold frameEntry
  rw [frame368_eq]
  rfl
theorem slimEntry368_eq : slimEntry optimized368 = (368, 2, slim368) := by
  unfold slimEntry
  rw [slim368_eq]
  rfl
#print axioms frame368_eq
#print axioms slim368_eq
end InitECandidate.Proofs.StackAnalysis
