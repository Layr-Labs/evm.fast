import InitECandidate.Proofs.BackendStages.Padded103
import InitECandidate.Proofs.BackendStages.BytesData103
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes103_eq : (Padded103.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes103 := by
  with_unfolding_all rfl
#print axioms sectionBytes103_eq
end InitECandidate.Proofs.BackendStages
