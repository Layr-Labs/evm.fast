import InitECandidate.Proofs.BackendStages.Padded626
import InitECandidate.Proofs.BackendStages.BytesData626
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes626_eq : (Padded626.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes626 := by
  with_unfolding_all rfl
#print axioms sectionBytes626_eq
end InitECandidate.Proofs.BackendStages
