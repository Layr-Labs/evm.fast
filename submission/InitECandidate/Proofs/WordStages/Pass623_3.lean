import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass623_2
import InitECandidate.Proofs.WordStages.Parallel623.Data3
import InitECandidate.Proofs.WordStages.Parallel623.AgreementsParallel.Chunk004
import InitECandidate.Proofs.DeadStages623.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages

def pass623_3 : WordLangProgHOL (BitVec 64) := Parallel623.pass623_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass623_3_eq : WordAlloc.removeDeadProg pass623_2 = pass623_3 := by
  have input_eq : pass623_2 = InitECandidate.Proofs.DeadStages623.Parallel.input1204 :=
    (show pass623_2 = Parallel623.word623_2_1944 by kernel_rfl).trans
      Parallel623.AgreementsParallel.input1204_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages623.Parallel.node1204_eq
  simp only [InitECandidate.Proofs.DeadStages623.Parallel.value0, InitECandidate.Proofs.DeadStages623.Parallel.value1,
    InitECandidate.Proofs.DeadStages623.Parallel.value2] at checked
  rw [checked]
  exact Parallel623.AgreementsParallel.output1204_eq.trans (by rfl)

#print axioms pass623_3_eq
end InitECandidate.Proofs.WordStages
