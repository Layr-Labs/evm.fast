import InitECandidate.Proofs.BackendStages.Padded426
import InitECandidate.Proofs.BackendStages.BytesData426
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes426_eq : (Padded426.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes426 := by
  with_unfolding_all rfl
#print axioms sectionBytes426_eq
end InitECandidate.Proofs.BackendStages
