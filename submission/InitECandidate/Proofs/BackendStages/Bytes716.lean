import InitECandidate.Proofs.BackendStages.Padded716
import InitECandidate.Proofs.BackendStages.BytesData716
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes716_eq : (Padded716.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes716 := by
  with_unfolding_all rfl
#print axioms sectionBytes716_eq
end InitECandidate.Proofs.BackendStages
