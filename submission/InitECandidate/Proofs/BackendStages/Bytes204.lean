import InitECandidate.Proofs.BackendStages.Padded204
import InitECandidate.Proofs.BackendStages.BytesData204
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes204_eq : (Padded204.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes204 := by
  with_unfolding_all rfl
#print axioms sectionBytes204_eq
end InitECandidate.Proofs.BackendStages
