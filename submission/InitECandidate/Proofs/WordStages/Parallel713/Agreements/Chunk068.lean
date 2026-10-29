import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel713.Data2
import InitECandidate.Proofs.WordStages.Parallel713.Data3
import InitECandidate.Proofs.DeadStages713.Chunk068
import InitECandidate.Proofs.WordStages.Parallel713.Agreements.Chunk067

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel713.Agreements
theorem input17408_eq : InitECandidate.Proofs.DeadStages713.input17408 =
    InitECandidate.Proofs.WordStages.Parallel713.word713_2_17426 := by
  rw [InitECandidate.Proofs.DeadStages713.input17408_def]
  simp only [input17407_eq, input17406_eq]
  kernel_rfl

theorem output17408_eq : InitECandidate.Proofs.DeadStages713.output17408 =
    InitECandidate.Proofs.WordStages.Parallel713.word713_3_15608 := by
  rw [InitECandidate.Proofs.DeadStages713.output17408_def]
  simp only [output17407_eq, output17406_eq]
  kernel_rfl

#print axioms output17408_eq
end InitECandidate.Proofs.WordStages.Parallel713.Agreements
