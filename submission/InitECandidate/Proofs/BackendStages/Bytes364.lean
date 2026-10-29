import InitECandidate.Proofs.BackendStages.Padded364
import InitECandidate.Proofs.BackendStages.BytesData364
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes364_eq : (Padded364.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes364 := by
  with_unfolding_all rfl
#print axioms sectionBytes364_eq
end InitECandidate.Proofs.BackendStages
