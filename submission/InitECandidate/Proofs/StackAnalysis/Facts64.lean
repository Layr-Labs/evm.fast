import InitECandidate.Proofs.StackAnalysis.Data64
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
def frame64 : Nat := 0
def slim64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 65) List.nil Option.none
theorem frame64_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized64.2.1 optimized64.2.2 = frame64 := by cbv
theorem slim64_eq : WordDepth.Executable.slim optimized64.2.2 = slim64 := by cbv
theorem frameEntry64_eq : frameEntry optimized64 = (64, frame64) := by
  unfold frameEntry
  rw [frame64_eq]
  rfl
theorem slimEntry64_eq : slimEntry optimized64 = (64, 1, slim64) := by
  unfold slimEntry
  rw [slim64_eq]
  rfl
#print axioms frame64_eq
#print axioms slim64_eq
end InitECandidate.Proofs.StackAnalysis
