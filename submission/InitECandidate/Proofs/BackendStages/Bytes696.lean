import InitECandidate.Proofs.BackendStages.Padded696
import InitECandidate.Proofs.BackendStages.BytesData696
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes696_eq : (Padded696.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes696 := by
  with_unfolding_all rfl
#print axioms sectionBytes696_eq
end InitECandidate.Proofs.BackendStages
