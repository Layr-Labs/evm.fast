import InitECandidate.Proofs.BackendStages.Padded720
import InitECandidate.Proofs.BackendStages.BytesData720
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes720_eq : (Padded720.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes720 := by
  with_unfolding_all rfl
#print axioms sectionBytes720_eq
end InitECandidate.Proofs.BackendStages
