import InitECandidate.Proofs.BackendStages.Padded271
import InitECandidate.Proofs.BackendStages.BytesData271
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes271_eq : (Padded271.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes271 := by
  with_unfolding_all rfl
#print axioms sectionBytes271_eq
end InitECandidate.Proofs.BackendStages
