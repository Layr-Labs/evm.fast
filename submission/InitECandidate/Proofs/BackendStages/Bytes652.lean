import InitECandidate.Proofs.BackendStages.Padded652
import InitECandidate.Proofs.BackendStages.BytesData652
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes652_eq : (Padded652.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes652 := by
  with_unfolding_all rfl
#print axioms sectionBytes652_eq
end InitECandidate.Proofs.BackendStages
