import InitECandidate.Proofs.BackendStages.Padded636
import InitECandidate.Proofs.BackendStages.BytesData636
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes636_eq : (Padded636.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes636 := by
  with_unfolding_all rfl
#print axioms sectionBytes636_eq
end InitECandidate.Proofs.BackendStages
