import InitECandidate.Proofs.BackendStages.Padded396
import InitECandidate.Proofs.BackendStages.BytesData396
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes396_eq : (Padded396.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes396 := by
  with_unfolding_all rfl
#print axioms sectionBytes396_eq
end InitECandidate.Proofs.BackendStages
