import InitECandidate.Proofs.BackendStages.Padded760
import InitECandidate.Proofs.BackendStages.BytesData760
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes760_eq : (Padded760.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes760 := by
  with_unfolding_all rfl
#print axioms sectionBytes760_eq
end InitECandidate.Proofs.BackendStages
