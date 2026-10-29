import InitECandidate.Proofs.BackendStages.Padded268
import InitECandidate.Proofs.BackendStages.BytesData268
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes268_eq : (Padded268.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes268 := by
  with_unfolding_all rfl
#print axioms sectionBytes268_eq
end InitECandidate.Proofs.BackendStages
