import InitECandidate.Proofs.BackendStages.Padded213
import InitECandidate.Proofs.BackendStages.BytesData213
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes213_eq : (Padded213.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes213 := by
  with_unfolding_all rfl
#print axioms sectionBytes213_eq
end InitECandidate.Proofs.BackendStages
