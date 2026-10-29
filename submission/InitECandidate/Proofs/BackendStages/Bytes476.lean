import InitECandidate.Proofs.BackendStages.Padded476
import InitECandidate.Proofs.BackendStages.BytesData476
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes476_eq : (Padded476.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes476 := by
  with_unfolding_all rfl
#print axioms sectionBytes476_eq
end InitECandidate.Proofs.BackendStages
