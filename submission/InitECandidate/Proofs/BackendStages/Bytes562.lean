import InitECandidate.Proofs.BackendStages.Padded562
import InitECandidate.Proofs.BackendStages.BytesData562
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes562_eq : (Padded562.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes562 := by
  with_unfolding_all rfl
#print axioms sectionBytes562_eq
end InitECandidate.Proofs.BackendStages
