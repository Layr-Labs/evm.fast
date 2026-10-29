import InitECandidate.Proofs.BackendStages.Padded488
import InitECandidate.Proofs.BackendStages.BytesData488
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes488_eq : (Padded488.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes488 := by
  with_unfolding_all rfl
#print axioms sectionBytes488_eq
end InitECandidate.Proofs.BackendStages
