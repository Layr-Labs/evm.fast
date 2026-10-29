import InitECandidate.Proofs.BackendStages.Padded648
import InitECandidate.Proofs.BackendStages.BytesData648
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes648_eq : (Padded648.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes648 := by
  with_unfolding_all rfl
#print axioms sectionBytes648_eq
end InitECandidate.Proofs.BackendStages
