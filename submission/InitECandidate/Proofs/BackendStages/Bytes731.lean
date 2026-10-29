import InitECandidate.Proofs.BackendStages.Padded731
import InitECandidate.Proofs.BackendStages.BytesData731
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes731_eq : (Padded731.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes731 := by
  with_unfolding_all rfl
#print axioms sectionBytes731_eq
end InitECandidate.Proofs.BackendStages
