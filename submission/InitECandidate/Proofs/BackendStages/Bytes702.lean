import InitECandidate.Proofs.BackendStages.Padded702
import InitECandidate.Proofs.BackendStages.BytesData702
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes702_eq : (Padded702.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes702 := by
  with_unfolding_all rfl
#print axioms sectionBytes702_eq
end InitECandidate.Proofs.BackendStages
