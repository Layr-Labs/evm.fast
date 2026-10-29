import InitECandidate.Proofs.BackendStages.Padded394
import InitECandidate.Proofs.BackendStages.BytesData394
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes394_eq : (Padded394.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes394 := by
  with_unfolding_all rfl
#print axioms sectionBytes394_eq
end InitECandidate.Proofs.BackendStages
