import InitECandidate.Proofs.BackendStages.Padded264
import InitECandidate.Proofs.BackendStages.BytesData264
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes264_eq : (Padded264.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes264 := by
  with_unfolding_all rfl
#print axioms sectionBytes264_eq
end InitECandidate.Proofs.BackendStages
