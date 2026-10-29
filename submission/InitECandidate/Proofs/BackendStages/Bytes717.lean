import InitECandidate.Proofs.BackendStages.Padded717
import InitECandidate.Proofs.BackendStages.BytesData717
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes717_eq : (Padded717.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes717 := by
  with_unfolding_all rfl
#print axioms sectionBytes717_eq
end InitECandidate.Proofs.BackendStages
