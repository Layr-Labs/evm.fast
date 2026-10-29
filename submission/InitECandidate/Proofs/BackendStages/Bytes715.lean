import InitECandidate.Proofs.BackendStages.Padded715
import InitECandidate.Proofs.BackendStages.BytesData715
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes715_eq : (Padded715.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes715 := by
  with_unfolding_all rfl
#print axioms sectionBytes715_eq
end InitECandidate.Proofs.BackendStages
