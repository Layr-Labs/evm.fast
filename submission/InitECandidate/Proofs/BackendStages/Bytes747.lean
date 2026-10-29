import InitECandidate.Proofs.BackendStages.Padded747
import InitECandidate.Proofs.BackendStages.BytesData747
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes747_eq : (Padded747.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes747 := by
  with_unfolding_all rfl
#print axioms sectionBytes747_eq
end InitECandidate.Proofs.BackendStages
