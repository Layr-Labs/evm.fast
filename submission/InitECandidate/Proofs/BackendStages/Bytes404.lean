import InitECandidate.Proofs.BackendStages.Padded404
import InitECandidate.Proofs.BackendStages.BytesData404
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes404_eq : (Padded404.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes404 := by
  with_unfolding_all rfl
#print axioms sectionBytes404_eq
end InitECandidate.Proofs.BackendStages
