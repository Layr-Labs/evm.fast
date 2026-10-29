import InitECandidate.Proofs.BackendStages.Padded615
import InitECandidate.Proofs.BackendStages.BytesData615
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes615_eq : (Padded615.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes615 := by
  with_unfolding_all rfl
#print axioms sectionBytes615_eq
end InitECandidate.Proofs.BackendStages
