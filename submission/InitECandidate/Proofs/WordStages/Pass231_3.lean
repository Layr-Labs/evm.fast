import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass231_2
import InitECandidate.Proofs.WordStages.Parallel231.Data3
import InitECandidate.Proofs.WordStages.Parallel231.AgreementsParallel.Chunk004
import InitECandidate.Proofs.DeadStages231.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages

def pass231_3 : WordLangProgHOL (BitVec 64) := Parallel231.pass231_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass231_3_eq : WordAlloc.removeDeadProg pass231_2 = pass231_3 := by
  have input_eq : pass231_2 = InitECandidate.Proofs.DeadStages231.Parallel.input1266 :=
    (show pass231_2 = Parallel231.word231_2_2134 by kernel_rfl).trans
      Parallel231.AgreementsParallel.input1266_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages231.Parallel.node1266_eq
  simp only [InitECandidate.Proofs.DeadStages231.Parallel.value0, InitECandidate.Proofs.DeadStages231.Parallel.value1,
    InitECandidate.Proofs.DeadStages231.Parallel.value2] at checked
  rw [checked]
  exact Parallel231.AgreementsParallel.output1266_eq.trans (by rfl)

#print axioms pass231_3_eq
end InitECandidate.Proofs.WordStages
