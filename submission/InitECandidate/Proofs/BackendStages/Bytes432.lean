import InitECandidate.Proofs.BackendStages.Padded432
import InitECandidate.Proofs.BackendStages.BytesData432
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes432_eq : (Padded432.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes432 := by
  with_unfolding_all rfl
#print axioms sectionBytes432_eq
end InitECandidate.Proofs.BackendStages
