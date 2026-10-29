import InitECandidate.Proofs.StackAnalysis.Data359
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
def frame359 : Nat := 0
def slim359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 176) List.nil Option.none
theorem frame359_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized359.2.1 optimized359.2.2 = frame359 := by cbv
theorem slim359_eq : WordDepth.Executable.slim optimized359.2.2 = slim359 := by cbv
theorem frameEntry359_eq : frameEntry optimized359 = (359, frame359) := by
  unfold frameEntry
  rw [frame359_eq]
  rfl
theorem slimEntry359_eq : slimEntry optimized359 = (359, 3, slim359) := by
  unfold slimEntry
  rw [slim359_eq]
  rfl
#print axioms frame359_eq
#print axioms slim359_eq
end InitECandidate.Proofs.StackAnalysis
