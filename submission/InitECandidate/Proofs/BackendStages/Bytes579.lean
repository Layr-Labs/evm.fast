import InitECandidate.Proofs.BackendStages.Padded579
import InitECandidate.Proofs.BackendStages.BytesData579
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes579_eq : (Padded579.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes579 := by
  with_unfolding_all rfl
#print axioms sectionBytes579_eq
end InitECandidate.Proofs.BackendStages
