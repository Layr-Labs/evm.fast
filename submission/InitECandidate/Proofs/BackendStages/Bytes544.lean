import InitECandidate.Proofs.BackendStages.Padded544
import InitECandidate.Proofs.BackendStages.BytesData544
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes544_eq : (Padded544.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes544 := by
  with_unfolding_all rfl
#print axioms sectionBytes544_eq
end InitECandidate.Proofs.BackendStages
