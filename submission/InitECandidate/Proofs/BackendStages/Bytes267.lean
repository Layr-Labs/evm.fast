import InitECandidate.Proofs.BackendStages.Padded267
import InitECandidate.Proofs.BackendStages.BytesData267
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes267_eq : (Padded267.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes267 := by
  with_unfolding_all rfl
#print axioms sectionBytes267_eq
end InitECandidate.Proofs.BackendStages
