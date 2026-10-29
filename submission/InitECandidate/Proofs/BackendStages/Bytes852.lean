import InitECandidate.Proofs.BackendStages.Padded852
import InitECandidate.Proofs.BackendStages.BytesData852
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes852_eq : (Padded852.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes852 := by
  with_unfolding_all rfl
#print axioms sectionBytes852_eq
end InitECandidate.Proofs.BackendStages
