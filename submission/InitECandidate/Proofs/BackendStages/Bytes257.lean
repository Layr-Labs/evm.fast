import InitECandidate.Proofs.BackendStages.Padded257
import InitECandidate.Proofs.BackendStages.BytesData257
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes257_eq : (Padded257.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes257 := by
  with_unfolding_all rfl
#print axioms sectionBytes257_eq
end InitECandidate.Proofs.BackendStages
