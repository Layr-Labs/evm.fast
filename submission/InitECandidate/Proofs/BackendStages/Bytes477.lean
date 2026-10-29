import InitECandidate.Proofs.BackendStages.Padded477
import InitECandidate.Proofs.BackendStages.BytesData477
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes477_eq : (Padded477.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes477 := by
  with_unfolding_all rfl
#print axioms sectionBytes477_eq
end InitECandidate.Proofs.BackendStages
