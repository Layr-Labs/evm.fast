import InitECandidate.Proofs.BackendStages.Padded514
import InitECandidate.Proofs.BackendStages.BytesData514
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes514_eq : (Padded514.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes514 := by
  with_unfolding_all rfl
#print axioms sectionBytes514_eq
end InitECandidate.Proofs.BackendStages
