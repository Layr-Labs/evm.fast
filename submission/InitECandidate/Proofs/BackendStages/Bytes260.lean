import InitECandidate.Proofs.BackendStages.Padded260
import InitECandidate.Proofs.BackendStages.BytesData260
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes260_eq : (Padded260.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes260 := by
  with_unfolding_all rfl
#print axioms sectionBytes260_eq
end InitECandidate.Proofs.BackendStages
