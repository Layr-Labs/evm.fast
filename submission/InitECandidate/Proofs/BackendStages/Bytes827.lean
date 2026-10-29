import InitECandidate.Proofs.BackendStages.Padded827
import InitECandidate.Proofs.BackendStages.BytesData827
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes827_eq : (Padded827.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes827 := by
  with_unfolding_all rfl
#print axioms sectionBytes827_eq
end InitECandidate.Proofs.BackendStages
