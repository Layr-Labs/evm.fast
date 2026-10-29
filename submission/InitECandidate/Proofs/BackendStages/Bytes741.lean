import InitECandidate.Proofs.BackendStages.Padded741
import InitECandidate.Proofs.BackendStages.BytesData741
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes741_eq : (Padded741.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes741 := by
  with_unfolding_all rfl
#print axioms sectionBytes741_eq
end InitECandidate.Proofs.BackendStages
