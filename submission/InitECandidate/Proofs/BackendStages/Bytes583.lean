import InitECandidate.Proofs.BackendStages.Padded583
import InitECandidate.Proofs.BackendStages.BytesData583
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes583_eq : (Padded583.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes583 := by
  with_unfolding_all rfl
#print axioms sectionBytes583_eq
end InitECandidate.Proofs.BackendStages
