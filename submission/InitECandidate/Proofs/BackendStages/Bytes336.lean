import InitECandidate.Proofs.BackendStages.Padded336
import InitECandidate.Proofs.BackendStages.BytesData336
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes336_eq : (Padded336.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes336 := by
  with_unfolding_all rfl
#print axioms sectionBytes336_eq
end InitECandidate.Proofs.BackendStages
