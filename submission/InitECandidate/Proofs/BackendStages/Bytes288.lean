import InitECandidate.Proofs.BackendStages.Padded288
import InitECandidate.Proofs.BackendStages.BytesData288
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes288_eq : (Padded288.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes288 := by
  with_unfolding_all rfl
#print axioms sectionBytes288_eq
end InitECandidate.Proofs.BackendStages
