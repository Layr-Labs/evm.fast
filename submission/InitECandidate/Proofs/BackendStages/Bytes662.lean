import InitECandidate.Proofs.BackendStages.Padded662
import InitECandidate.Proofs.BackendStages.BytesData662
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes662_eq : (Padded662.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes662 := by
  with_unfolding_all rfl
#print axioms sectionBytes662_eq
end InitECandidate.Proofs.BackendStages
