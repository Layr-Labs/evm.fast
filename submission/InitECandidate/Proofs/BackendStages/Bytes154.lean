import InitECandidate.Proofs.BackendStages.Padded154
import InitECandidate.Proofs.BackendStages.BytesData154
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes154_eq : (Padded154.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes154 := by
  with_unfolding_all rfl
#print axioms sectionBytes154_eq
end InitECandidate.Proofs.BackendStages
