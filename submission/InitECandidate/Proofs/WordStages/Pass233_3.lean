import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass233_2
import InitECandidate.Proofs.WordStages.Parallel233.Data3
import InitECandidate.Proofs.WordStages.Parallel233.AgreementsParallel.Chunk006
import InitECandidate.Proofs.DeadStages233.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages

def pass233_3 : WordLangProgHOL (BitVec 64) := Parallel233.pass233_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass233_3_eq : WordAlloc.removeDeadProg pass233_2 = pass233_3 := by
  have input_eq : pass233_2 = InitECandidate.Proofs.DeadStages233.Parallel.input1633 :=
    (show pass233_2 = Parallel233.word233_2_2532 by kernel_rfl).trans
      Parallel233.AgreementsParallel.input1633_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages233.Parallel.node1633_eq
  simp only [InitECandidate.Proofs.DeadStages233.Parallel.value0, InitECandidate.Proofs.DeadStages233.Parallel.value1,
    InitECandidate.Proofs.DeadStages233.Parallel.value2] at checked
  rw [checked]
  exact Parallel233.AgreementsParallel.output1633_eq.trans (by rfl)

#print axioms pass233_3_eq
end InitECandidate.Proofs.WordStages
