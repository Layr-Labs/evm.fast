import InitECandidate.Proofs.BackendStages.Padded779
import InitECandidate.Proofs.BackendStages.BytesData779
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes779_eq : (Padded779.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes779 := by
  with_unfolding_all rfl
#print axioms sectionBytes779_eq
end InitECandidate.Proofs.BackendStages
