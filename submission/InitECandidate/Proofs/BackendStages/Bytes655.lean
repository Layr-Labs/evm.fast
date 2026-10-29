import InitECandidate.Proofs.BackendStages.Padded655
import InitECandidate.Proofs.BackendStages.BytesData655
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes655_eq : (Padded655.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes655 := by
  with_unfolding_all rfl
#print axioms sectionBytes655_eq
end InitECandidate.Proofs.BackendStages
