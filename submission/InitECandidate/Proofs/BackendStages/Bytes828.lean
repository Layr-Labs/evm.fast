import InitECandidate.Proofs.BackendStages.Padded828
import InitECandidate.Proofs.BackendStages.BytesData828
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes828_eq : (Padded828.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes828 := by
  with_unfolding_all rfl
#print axioms sectionBytes828_eq
end InitECandidate.Proofs.BackendStages
