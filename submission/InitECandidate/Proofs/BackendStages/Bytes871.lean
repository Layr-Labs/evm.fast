import InitECandidate.Proofs.BackendStages.Padded871
import InitECandidate.Proofs.BackendStages.BytesData871
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes871_eq : (Padded871.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes871 := by
  with_unfolding_all rfl
#print axioms sectionBytes871_eq
end InitECandidate.Proofs.BackendStages
