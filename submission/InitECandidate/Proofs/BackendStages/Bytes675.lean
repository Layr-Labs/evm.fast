import InitECandidate.Proofs.BackendStages.Padded675
import InitECandidate.Proofs.BackendStages.BytesData675
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes675_eq : (Padded675.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes675 := by
  with_unfolding_all rfl
#print axioms sectionBytes675_eq
end InitECandidate.Proofs.BackendStages
