import InitECandidate.Proofs.BackendStages.Padded254
import InitECandidate.Proofs.BackendStages.BytesData254
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes254_eq : (Padded254.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes254 := by
  with_unfolding_all rfl
#print axioms sectionBytes254_eq
end InitECandidate.Proofs.BackendStages
