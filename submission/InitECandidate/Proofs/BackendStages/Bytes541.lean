import InitECandidate.Proofs.BackendStages.Padded541
import InitECandidate.Proofs.BackendStages.BytesData541
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes541_eq : (Padded541.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes541 := by
  with_unfolding_all rfl
#print axioms sectionBytes541_eq
end InitECandidate.Proofs.BackendStages
