import InitECandidate.Proofs.BackendStages.Padded124
import InitECandidate.Proofs.BackendStages.BytesData124
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes124_eq : (Padded124.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes124 := by
  with_unfolding_all rfl
#print axioms sectionBytes124_eq
end InitECandidate.Proofs.BackendStages
