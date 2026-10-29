import InitECandidate.Proofs.BackendStages.Padded366
import InitECandidate.Proofs.BackendStages.BytesData366
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes366_eq : (Padded366.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes366 := by
  with_unfolding_all rfl
#print axioms sectionBytes366_eq
end InitECandidate.Proofs.BackendStages
