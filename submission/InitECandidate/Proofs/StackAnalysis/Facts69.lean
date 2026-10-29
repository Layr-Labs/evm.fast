import InitECandidate.Proofs.StackAnalysis.Data69
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
def frame69 : Nat := 0
def slim69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame69_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized69.2.1 optimized69.2.2 = frame69 := by cbv
theorem slim69_eq : WordDepth.Executable.slim optimized69.2.2 = slim69 := by cbv
theorem frameEntry69_eq : frameEntry optimized69 = (69, frame69) := by
  unfold frameEntry
  rw [frame69_eq]
  rfl
theorem slimEntry69_eq : slimEntry optimized69 = (69, 1, slim69) := by
  unfold slimEntry
  rw [slim69_eq]
  rfl
#print axioms frame69_eq
#print axioms slim69_eq
end InitECandidate.Proofs.StackAnalysis
