import InitECandidate.Proofs.BackendStages.Padded546
import InitECandidate.Proofs.BackendStages.BytesData546
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes546_eq : (Padded546.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes546 := by
  with_unfolding_all rfl
#print axioms sectionBytes546_eq
end InitECandidate.Proofs.BackendStages
