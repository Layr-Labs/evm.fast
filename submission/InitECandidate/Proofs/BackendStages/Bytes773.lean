import InitECandidate.Proofs.BackendStages.Padded773
import InitECandidate.Proofs.BackendStages.BytesData773
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes773_eq : (Padded773.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes773 := by
  with_unfolding_all rfl
#print axioms sectionBytes773_eq
end InitECandidate.Proofs.BackendStages
