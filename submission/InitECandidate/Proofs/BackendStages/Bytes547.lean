import InitECandidate.Proofs.BackendStages.Padded547
import InitECandidate.Proofs.BackendStages.BytesData547
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes547_eq : (Padded547.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes547 := by
  with_unfolding_all rfl
#print axioms sectionBytes547_eq
end InitECandidate.Proofs.BackendStages
