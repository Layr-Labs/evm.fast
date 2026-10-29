import InitECandidate.Proofs.BackendStages.Padded397
import InitECandidate.Proofs.BackendStages.BytesData397
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes397_eq : (Padded397.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes397 := by
  with_unfolding_all rfl
#print axioms sectionBytes397_eq
end InitECandidate.Proofs.BackendStages
