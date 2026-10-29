import InitECandidate.Proofs.BackendStages.Padded573
import InitECandidate.Proofs.BackendStages.BytesData573
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes573_eq : (Padded573.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes573 := by
  with_unfolding_all rfl
#print axioms sectionBytes573_eq
end InitECandidate.Proofs.BackendStages
