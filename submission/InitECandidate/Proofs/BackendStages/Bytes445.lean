import InitECandidate.Proofs.BackendStages.Padded445
import InitECandidate.Proofs.BackendStages.BytesData445
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes445_eq : (Padded445.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes445 := by
  with_unfolding_all rfl
#print axioms sectionBytes445_eq
end InitECandidate.Proofs.BackendStages
