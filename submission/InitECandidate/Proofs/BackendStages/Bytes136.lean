import InitECandidate.Proofs.BackendStages.Padded136
import InitECandidate.Proofs.BackendStages.BytesData136
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes136_eq : (Padded136.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes136 := by
  with_unfolding_all rfl
#print axioms sectionBytes136_eq
end InitECandidate.Proofs.BackendStages
