import InitECandidate.Proofs.BackendStages.Padded489
import InitECandidate.Proofs.BackendStages.BytesData489
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes489_eq : (Padded489.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes489 := by
  with_unfolding_all rfl
#print axioms sectionBytes489_eq
end InitECandidate.Proofs.BackendStages
