import InitECandidate.Proofs.BackendStages.Padded389
import InitECandidate.Proofs.BackendStages.BytesData389
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes389_eq : (Padded389.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes389 := by
  with_unfolding_all rfl
#print axioms sectionBytes389_eq
end InitECandidate.Proofs.BackendStages
