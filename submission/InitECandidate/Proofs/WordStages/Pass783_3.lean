import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass783_2
import InitECandidate.Proofs.WordStages.Parallel783.Data3
import InitECandidate.Proofs.WordStages.Parallel783.AgreementsParallel.Chunk010
import InitECandidate.Proofs.DeadStages783.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages

def pass783_3 : WordLangProgHOL (BitVec 64) := Parallel783.pass783_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass783_3_eq : WordAlloc.removeDeadProg pass783_2 = pass783_3 := by
  have input_eq : pass783_2 = InitECandidate.Proofs.DeadStages783.Parallel.input2692 :=
    (show pass783_2 = Parallel783.word783_2_3784 by kernel_rfl).trans
      Parallel783.AgreementsParallel.input2692_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages783.Parallel.node2692_eq
  simp only [InitECandidate.Proofs.DeadStages783.Parallel.value0, InitECandidate.Proofs.DeadStages783.Parallel.value1,
    InitECandidate.Proofs.DeadStages783.Parallel.value2] at checked
  rw [checked]
  exact Parallel783.AgreementsParallel.output2692_eq.trans (by rfl)

#print axioms pass783_3_eq
end InitECandidate.Proofs.WordStages
