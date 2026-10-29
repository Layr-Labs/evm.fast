import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass184_2
import InitECandidate.Proofs.WordStages.Parallel184.Data3
import InitECandidate.Proofs.WordStages.Parallel184.AgreementsParallel.Chunk009
import InitECandidate.Proofs.DeadStages184.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages

def pass184_3 : WordLangProgHOL (BitVec 64) := Parallel184.pass184_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass184_3_eq : WordAlloc.removeDeadProg pass184_2 = pass184_3 := by
  have input_eq : pass184_2 = InitECandidate.Proofs.DeadStages184.Parallel.input2332 :=
    (show pass184_2 = Parallel184.word184_2_2264 by kernel_rfl).trans
      Parallel184.AgreementsParallel.input2332_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages184.Parallel.node2332_eq
  simp only [InitECandidate.Proofs.DeadStages184.Parallel.value0, InitECandidate.Proofs.DeadStages184.Parallel.value1,
    InitECandidate.Proofs.DeadStages184.Parallel.value2] at checked
  rw [checked]
  exact Parallel184.AgreementsParallel.output2332_eq.trans (by rfl)

#print axioms pass184_3_eq
end InitECandidate.Proofs.WordStages
