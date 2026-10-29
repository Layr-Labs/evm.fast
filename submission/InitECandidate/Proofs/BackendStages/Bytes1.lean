import InitECandidate.Proofs.BackendStages.Padded1
import InitECandidate.Proofs.BackendStages.BytesData1
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes1_eq : (Padded1.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes1 := by
  with_unfolding_all rfl
#print axioms sectionBytes1_eq
end InitECandidate.Proofs.BackendStages
