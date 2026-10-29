import InitECandidate.Proofs.BackendStages.Padded640
import InitECandidate.Proofs.BackendStages.BytesData640
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes640_eq : (Padded640.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes640 := by
  with_unfolding_all rfl
#print axioms sectionBytes640_eq
end InitECandidate.Proofs.BackendStages
