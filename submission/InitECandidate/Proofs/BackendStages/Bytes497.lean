import InitECandidate.Proofs.BackendStages.Padded497
import InitECandidate.Proofs.BackendStages.BytesData497
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes497_eq : (Padded497.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes497 := by
  with_unfolding_all rfl
#print axioms sectionBytes497_eq
end InitECandidate.Proofs.BackendStages
