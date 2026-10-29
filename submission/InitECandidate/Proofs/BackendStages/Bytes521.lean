import InitECandidate.Proofs.BackendStages.Padded521
import InitECandidate.Proofs.BackendStages.BytesData521
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes521_eq : (Padded521.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes521 := by
  with_unfolding_all rfl
#print axioms sectionBytes521_eq
end InitECandidate.Proofs.BackendStages
