import InitECandidate.Proofs.BackendStages.Padded560
import InitECandidate.Proofs.BackendStages.BytesData560
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes560_eq : (Padded560.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes560 := by
  with_unfolding_all rfl
#print axioms sectionBytes560_eq
end InitECandidate.Proofs.BackendStages
