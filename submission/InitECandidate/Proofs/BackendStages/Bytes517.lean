import InitECandidate.Proofs.BackendStages.Padded517
import InitECandidate.Proofs.BackendStages.BytesData517
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes517_eq : (Padded517.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes517 := by
  with_unfolding_all rfl
#print axioms sectionBytes517_eq
end InitECandidate.Proofs.BackendStages
