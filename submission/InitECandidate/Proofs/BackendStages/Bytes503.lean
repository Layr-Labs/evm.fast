import InitECandidate.Proofs.BackendStages.Padded503
import InitECandidate.Proofs.BackendStages.BytesData503
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes503_eq : (Padded503.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes503 := by
  with_unfolding_all rfl
#print axioms sectionBytes503_eq
end InitECandidate.Proofs.BackendStages
