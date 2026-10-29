import InitECandidate.Proofs.BackendStages.Padded113
import InitECandidate.Proofs.BackendStages.BytesData113
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes113_eq : (Padded113.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes113 := by
  with_unfolding_all rfl
#print axioms sectionBytes113_eq
end InitECandidate.Proofs.BackendStages
