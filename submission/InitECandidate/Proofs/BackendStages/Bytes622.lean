import InitECandidate.Proofs.BackendStages.Padded622
import InitECandidate.Proofs.BackendStages.BytesData622
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes622_eq : (Padded622.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes622 := by
  with_unfolding_all rfl
#print axioms sectionBytes622_eq
end InitECandidate.Proofs.BackendStages
