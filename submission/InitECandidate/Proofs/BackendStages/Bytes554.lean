import InitECandidate.Proofs.BackendStages.Padded554
import InitECandidate.Proofs.BackendStages.BytesData554
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes554_eq : (Padded554.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes554 := by
  with_unfolding_all rfl
#print axioms sectionBytes554_eq
end InitECandidate.Proofs.BackendStages
