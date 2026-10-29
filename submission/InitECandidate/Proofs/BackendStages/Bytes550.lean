import InitECandidate.Proofs.BackendStages.Padded550
import InitECandidate.Proofs.BackendStages.BytesData550
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes550_eq : (Padded550.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes550 := by
  with_unfolding_all rfl
#print axioms sectionBytes550_eq
end InitECandidate.Proofs.BackendStages
