import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass782_2
import InitECandidate.Proofs.WordStages.Parallel782.Data3
import InitECandidate.Proofs.WordStages.Parallel782.AgreementsParallel.Chunk006
import InitECandidate.Proofs.DeadStages782.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages

def pass782_3 : WordLangProgHOL (BitVec 64) := Parallel782.pass782_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass782_3_eq : WordAlloc.removeDeadProg pass782_2 = pass782_3 := by
  have input_eq : pass782_2 = InitECandidate.Proofs.DeadStages782.Parallel.input1734 :=
    (show pass782_2 = Parallel782.word782_2_2845 by kernel_rfl).trans
      Parallel782.AgreementsParallel.input1734_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages782.Parallel.node1734_eq
  simp only [InitECandidate.Proofs.DeadStages782.Parallel.value0, InitECandidate.Proofs.DeadStages782.Parallel.value1,
    InitECandidate.Proofs.DeadStages782.Parallel.value2] at checked
  rw [checked]
  exact Parallel782.AgreementsParallel.output1734_eq.trans (by rfl)

#print axioms pass782_3_eq
end InitECandidate.Proofs.WordStages
