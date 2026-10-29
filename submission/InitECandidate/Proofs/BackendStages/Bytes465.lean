import InitECandidate.Proofs.BackendStages.Padded465
import InitECandidate.Proofs.BackendStages.BytesData465
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes465_eq : (Padded465.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes465 := by
  with_unfolding_all rfl
#print axioms sectionBytes465_eq
end InitECandidate.Proofs.BackendStages
