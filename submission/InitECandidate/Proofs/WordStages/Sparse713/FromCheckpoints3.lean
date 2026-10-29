import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass713_2
import InitECandidate.Proofs.WordStages.Sparse713.Data3
import InitECandidate.Proofs.WordStages.Parallel713.Agreements.Chunk068

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

open Flapjack
namespace InitECandidate.Proofs.WordStages.Sparse713

/-- Join the checked dead-code computation using small node equations rather
than unfolding every sealed checkpoint in one large simplifier proof. -/
theorem fromCheckpoints3_eq :
    WordAlloc.removeDeadProg InitECandidate.Proofs.WordStages.pass713_2 = pass713_3 := by
  have input_eq : InitECandidate.Proofs.WordStages.pass713_2 = InitECandidate.Proofs.DeadStages713.input17408 :=
    (show InitECandidate.Proofs.WordStages.pass713_2 =
      InitECandidate.Proofs.WordStages.Parallel713.word713_2_17426 by kernel_rfl).trans
        InitECandidate.Proofs.WordStages.Parallel713.Agreements.input17408_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages713.node17408_eq
  simp only [InitECandidate.Proofs.DeadStages713.value0, InitECandidate.Proofs.DeadStages713.value1,
    InitECandidate.Proofs.DeadStages713.value2] at checked
  rw [checked]
  exact InitECandidate.Proofs.WordStages.Parallel713.Agreements.output17408_eq.trans
    (by kernel_rfl)

#print axioms fromCheckpoints3_eq
end InitECandidate.Proofs.WordStages.Sparse713
