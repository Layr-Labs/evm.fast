import InitECandidate.Proofs.BackendStages.Padded506
import InitECandidate.Proofs.BackendStages.BytesData506
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes506_eq : (Padded506.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes506 := by
  with_unfolding_all rfl
#print axioms sectionBytes506_eq
end InitECandidate.Proofs.BackendStages
