import InitECandidate.Proofs.BackendStages.Padded65
import InitECandidate.Proofs.BackendStages.BytesData65
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes65_eq : (Padded65.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes65 := by
  with_unfolding_all rfl
#print axioms sectionBytes65_eq
end InitECandidate.Proofs.BackendStages
