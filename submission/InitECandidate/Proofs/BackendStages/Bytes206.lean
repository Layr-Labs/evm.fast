import InitECandidate.Proofs.BackendStages.Padded206
import InitECandidate.Proofs.BackendStages.BytesData206
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes206_eq : (Padded206.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes206 := by
  with_unfolding_all rfl
#print axioms sectionBytes206_eq
end InitECandidate.Proofs.BackendStages
