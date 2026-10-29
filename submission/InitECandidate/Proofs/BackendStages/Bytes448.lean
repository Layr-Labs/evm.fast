import InitECandidate.Proofs.BackendStages.Padded448
import InitECandidate.Proofs.BackendStages.BytesData448
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes448_eq : (Padded448.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes448 := by
  with_unfolding_all rfl
#print axioms sectionBytes448_eq
end InitECandidate.Proofs.BackendStages
