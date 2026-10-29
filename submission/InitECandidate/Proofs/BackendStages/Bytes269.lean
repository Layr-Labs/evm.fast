import InitECandidate.Proofs.BackendStages.Padded269
import InitECandidate.Proofs.BackendStages.BytesData269
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes269_eq : (Padded269.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes269 := by
  with_unfolding_all rfl
#print axioms sectionBytes269_eq
end InitECandidate.Proofs.BackendStages
