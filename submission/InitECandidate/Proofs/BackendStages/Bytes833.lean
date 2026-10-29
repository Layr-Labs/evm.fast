import InitECandidate.Proofs.BackendStages.Padded833
import InitECandidate.Proofs.BackendStages.BytesData833
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes833_eq : (Padded833.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes833 := by
  with_unfolding_all rfl
#print axioms sectionBytes833_eq
end InitECandidate.Proofs.BackendStages
