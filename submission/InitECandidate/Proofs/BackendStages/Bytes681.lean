import InitECandidate.Proofs.BackendStages.Padded681
import InitECandidate.Proofs.BackendStages.BytesData681
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes681_eq : (Padded681.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes681 := by
  with_unfolding_all rfl
#print axioms sectionBytes681_eq
end InitECandidate.Proofs.BackendStages
