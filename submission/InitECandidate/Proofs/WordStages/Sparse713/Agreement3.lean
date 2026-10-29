import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass713_3
import InitECandidate.Proofs.WordStages.Sparse713.Data3

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Sparse713
/-- The compact DAG denotes the independently checked dead-code output. -/
theorem pass713_3_agreement : InitECandidate.Proofs.WordStages.pass713_3 = pass713_3 := by
  kernel_rfl
#print axioms pass713_3_agreement
end InitECandidate.Proofs.WordStages.Sparse713
