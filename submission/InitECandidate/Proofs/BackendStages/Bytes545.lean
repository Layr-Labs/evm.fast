import InitECandidate.Proofs.BackendStages.Padded545
import InitECandidate.Proofs.BackendStages.BytesData545
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes545_eq : (Padded545.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes545 := by
  with_unfolding_all rfl
#print axioms sectionBytes545_eq
end InitECandidate.Proofs.BackendStages
