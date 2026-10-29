import InitECandidate.Proofs.BackendStages.Padded256
import InitECandidate.Proofs.BackendStages.BytesData256
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes256_eq : (Padded256.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes256 := by
  with_unfolding_all rfl
#print axioms sectionBytes256_eq
end InitECandidate.Proofs.BackendStages
