import InitECandidate.Proofs.BackendStages.Padded466
import InitECandidate.Proofs.BackendStages.BytesData466
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes466_eq : (Padded466.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes466 := by
  with_unfolding_all rfl
#print axioms sectionBytes466_eq
end InitECandidate.Proofs.BackendStages
