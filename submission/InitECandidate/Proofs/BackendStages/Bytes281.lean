import InitECandidate.Proofs.BackendStages.Padded281
import InitECandidate.Proofs.BackendStages.BytesData281
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes281_eq : (Padded281.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes281 := by
  with_unfolding_all rfl
#print axioms sectionBytes281_eq
end InitECandidate.Proofs.BackendStages
