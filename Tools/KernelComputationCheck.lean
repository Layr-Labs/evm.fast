import InitECandidate.Proofs.CompactComputation
import Flapjack.Compiler.Backend.WordCopy

namespace InitE.KernelComputationCheck
open Flapjack Flapjack.Compiler.Backend

private def source : WordLangProgHOL (BitVec 64) :=
  .seq (.move 0 [(5, 1)]) (.return 0 [1])
private def target : WordLangProgHOL (BitVec 64) :=
  .seq (.move 0 [(5, 1)]) (.return 0 [5])

/-- The target differs from the source and requires copy-state computation. -/
theorem copy_checked : WordCopy.copyProp source = target := by kernel_rfl

/--
error: (kernel) declaration type mismatch, 'InitE.KernelComputationCheck.incorrect' has type
  1 = 1
but it is expected to have type
  1 = 2
-/
#guard_msgs in
theorem incorrect : (1 : Nat) = 2 := by kernel_rfl

#print axioms copy_checked
end InitE.KernelComputationCheck
