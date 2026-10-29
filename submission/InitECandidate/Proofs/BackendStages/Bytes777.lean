import InitECandidate.Proofs.BackendStages.Padded777
import InitECandidate.Proofs.BackendStages.BytesData777
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes777_eq : (Padded777.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes777 := by
  with_unfolding_all rfl
#print axioms sectionBytes777_eq
end InitECandidate.Proofs.BackendStages
