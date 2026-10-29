import InitECandidate.Proofs.BackendStages.Padded780
import InitECandidate.Proofs.BackendStages.BytesData780
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes780_eq : (Padded780.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes780 := by
  with_unfolding_all rfl
#print axioms sectionBytes780_eq
end InitECandidate.Proofs.BackendStages
