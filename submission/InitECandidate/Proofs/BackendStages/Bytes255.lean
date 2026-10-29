import InitECandidate.Proofs.BackendStages.Padded255
import InitECandidate.Proofs.BackendStages.BytesData255
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes255_eq : (Padded255.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes255 := by
  with_unfolding_all rfl
#print axioms sectionBytes255_eq
end InitECandidate.Proofs.BackendStages
