import InitECandidate.Proofs.StackAnalysis.Data218
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
def frame218 : Nat := 0
def slim218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 217) List.nil Option.none
theorem frame218_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized218.2.1 optimized218.2.2 = frame218 := by cbv
theorem slim218_eq : WordDepth.Executable.slim optimized218.2.2 = slim218 := by cbv
theorem frameEntry218_eq : frameEntry optimized218 = (218, frame218) := by
  unfold frameEntry
  rw [frame218_eq]
  rfl
theorem slimEntry218_eq : slimEntry optimized218 = (218, 5, slim218) := by
  unfold slimEntry
  rw [slim218_eq]
  rfl
#print axioms frame218_eq
#print axioms slim218_eq
end InitECandidate.Proofs.StackAnalysis
