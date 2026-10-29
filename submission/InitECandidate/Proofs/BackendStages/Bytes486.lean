import InitECandidate.Proofs.BackendStages.Padded486
import InitECandidate.Proofs.BackendStages.BytesData486
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes486_eq : (Padded486.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes486 := by
  with_unfolding_all rfl
#print axioms sectionBytes486_eq
end InitECandidate.Proofs.BackendStages
