import InitECandidate.Proofs.BackendStages.Padded377
import InitECandidate.Proofs.BackendStages.BytesData377
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes377_eq : (Padded377.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes377 := by
  with_unfolding_all rfl
#print axioms sectionBytes377_eq
end InitECandidate.Proofs.BackendStages
