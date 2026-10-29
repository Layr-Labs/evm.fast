import InitECandidate.Proofs.BackendStages.Padded792
import InitECandidate.Proofs.BackendStages.BytesData792
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes792_eq : (Padded792.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes792 := by
  with_unfolding_all rfl
#print axioms sectionBytes792_eq
end InitECandidate.Proofs.BackendStages
