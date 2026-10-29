import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass461_2
import InitECandidate.Proofs.WordStages.Parallel461.Data3
import InitECandidate.Proofs.WordStages.Parallel461.AgreementsParallel.Chunk008
import InitECandidate.Proofs.DeadStages461.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages

def pass461_3 : WordLangProgHOL (BitVec 64) := Parallel461.pass461_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass461_3_eq : WordAlloc.removeDeadProg pass461_2 = pass461_3 := by
  have input_eq : pass461_2 = InitECandidate.Proofs.DeadStages461.Parallel.input2279 :=
    (show pass461_2 = Parallel461.word461_2_3443 by kernel_rfl).trans
      Parallel461.AgreementsParallel.input2279_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages461.Parallel.node2279_eq
  simp only [InitECandidate.Proofs.DeadStages461.Parallel.value0, InitECandidate.Proofs.DeadStages461.Parallel.value1,
    InitECandidate.Proofs.DeadStages461.Parallel.value2] at checked
  rw [checked]
  exact Parallel461.AgreementsParallel.output2279_eq.trans (by rfl)

#print axioms pass461_3_eq
end InitECandidate.Proofs.WordStages
