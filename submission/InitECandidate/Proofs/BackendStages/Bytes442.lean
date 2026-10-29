import InitECandidate.Proofs.BackendStages.Padded442
import InitECandidate.Proofs.BackendStages.BytesData442
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes442_eq : (Padded442.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes442 := by
  with_unfolding_all rfl
#print axioms sectionBytes442_eq
end InitECandidate.Proofs.BackendStages
