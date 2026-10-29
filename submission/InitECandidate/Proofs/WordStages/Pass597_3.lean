import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass597_2
import InitECandidate.Proofs.WordStages.Parallel597.Data3
import InitECandidate.Proofs.WordStages.Parallel597.AgreementsParallel.Chunk020
import InitECandidate.Proofs.DeadStages597.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages

def pass597_3 : WordLangProgHOL (BitVec 64) := Parallel597.pass597_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass597_3_eq : WordAlloc.removeDeadProg pass597_2 = pass597_3 := by
  have input_eq : pass597_2 = InitECandidate.Proofs.DeadStages597.Parallel.input5192 :=
    (show pass597_2 = Parallel597.word597_2_6320 by kernel_rfl).trans
      Parallel597.AgreementsParallel.input5192_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages597.Parallel.node5192_eq
  simp only [InitECandidate.Proofs.DeadStages597.Parallel.value0, InitECandidate.Proofs.DeadStages597.Parallel.value1,
    InitECandidate.Proofs.DeadStages597.Parallel.value2] at checked
  rw [checked]
  exact Parallel597.AgreementsParallel.output5192_eq.trans (by rfl)

#print axioms pass597_3_eq
end InitECandidate.Proofs.WordStages
