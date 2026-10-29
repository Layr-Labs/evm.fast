import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass347_2
import InitECandidate.Proofs.WordStages.Parallel347.Data3
import InitECandidate.Proofs.WordStages.Parallel347.AgreementsParallel.Chunk006
import InitECandidate.Proofs.DeadStages347.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages

def pass347_3 : WordLangProgHOL (BitVec 64) := Parallel347.pass347_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass347_3_eq : WordAlloc.removeDeadProg pass347_2 = pass347_3 := by
  have input_eq : pass347_2 = InitECandidate.Proofs.DeadStages347.Parallel.input1720 :=
    (show pass347_2 = Parallel347.word347_2_2304 by kernel_rfl).trans
      Parallel347.AgreementsParallel.input1720_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages347.Parallel.node1720_eq
  simp only [InitECandidate.Proofs.DeadStages347.Parallel.value0, InitECandidate.Proofs.DeadStages347.Parallel.value1,
    InitECandidate.Proofs.DeadStages347.Parallel.value2] at checked
  rw [checked]
  exact Parallel347.AgreementsParallel.output1720_eq.trans (by rfl)

#print axioms pass347_3_eq
end InitECandidate.Proofs.WordStages
