import InitECandidate.Proofs.BackendStages.Padded529
import InitECandidate.Proofs.BackendStages.BytesData529
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes529_eq : (Padded529.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes529 := by
  with_unfolding_all rfl
#print axioms sectionBytes529_eq
end InitECandidate.Proofs.BackendStages
