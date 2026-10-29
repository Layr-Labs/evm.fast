import InitECandidate.Proofs.BackendStages.Padded85
import InitECandidate.Proofs.BackendStages.BytesData85
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes85_eq : (Padded85.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes85 := by
  with_unfolding_all rfl
#print axioms sectionBytes85_eq
end InitECandidate.Proofs.BackendStages
