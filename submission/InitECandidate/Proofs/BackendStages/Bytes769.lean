import InitECandidate.Proofs.BackendStages.Padded769
import InitECandidate.Proofs.BackendStages.BytesData769
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes769_eq : (Padded769.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes769 := by
  with_unfolding_all rfl
#print axioms sectionBytes769_eq
end InitECandidate.Proofs.BackendStages
