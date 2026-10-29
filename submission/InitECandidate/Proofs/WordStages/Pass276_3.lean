import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass276_2
import InitECandidate.Proofs.WordStages.Parallel276.Data3
import InitECandidate.Proofs.WordStages.Parallel276.AgreementsParallel.Chunk004
import InitECandidate.Proofs.DeadStages276.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages

def pass276_3 : WordLangProgHOL (BitVec 64) := Parallel276.pass276_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass276_3_eq : WordAlloc.removeDeadProg pass276_2 = pass276_3 := by
  have input_eq : pass276_2 = InitECandidate.Proofs.DeadStages276.Parallel.input1108 :=
    (show pass276_2 = Parallel276.word276_2_1741 by kernel_rfl).trans
      Parallel276.AgreementsParallel.input1108_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages276.Parallel.node1108_eq
  simp only [InitECandidate.Proofs.DeadStages276.Parallel.value0, InitECandidate.Proofs.DeadStages276.Parallel.value1,
    InitECandidate.Proofs.DeadStages276.Parallel.value2] at checked
  rw [checked]
  exact Parallel276.AgreementsParallel.output1108_eq.trans (by rfl)

#print axioms pass276_3_eq
end InitECandidate.Proofs.WordStages
