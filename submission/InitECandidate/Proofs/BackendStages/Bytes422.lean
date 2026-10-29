import InitECandidate.Proofs.BackendStages.Padded422
import InitECandidate.Proofs.BackendStages.BytesData422
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes422_eq : (Padded422.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes422 := by
  with_unfolding_all rfl
#print axioms sectionBytes422_eq
end InitECandidate.Proofs.BackendStages
