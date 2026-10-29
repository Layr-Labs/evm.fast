import InitECandidate.Proofs.BackendStages.Padded250
import InitECandidate.Proofs.BackendStages.BytesData250
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes250_eq : (Padded250.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes250 := by
  with_unfolding_all rfl
#print axioms sectionBytes250_eq
end InitECandidate.Proofs.BackendStages
