import InitECandidate.Proofs.StackAnalysis.Data492
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
def frame492 : Nat := 0
def slim492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame492_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized492.2.1 optimized492.2.2 = frame492 := by cbv
theorem slim492_eq : WordDepth.Executable.slim optimized492.2.2 = slim492 := by cbv
theorem frameEntry492_eq : frameEntry optimized492 = (492, frame492) := by
  unfold frameEntry
  rw [frame492_eq]
  rfl
theorem slimEntry492_eq : slimEntry optimized492 = (492, 1, slim492) := by
  unfold slimEntry
  rw [slim492_eq]
  rfl
#print axioms frame492_eq
#print axioms slim492_eq
end InitECandidate.Proofs.StackAnalysis
