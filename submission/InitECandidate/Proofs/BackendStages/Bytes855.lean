import InitECandidate.Proofs.BackendStages.Padded855
import InitECandidate.Proofs.BackendStages.BytesData855
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes855_eq : (Padded855.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes855 := by
  with_unfolding_all rfl
#print axioms sectionBytes855_eq
end InitECandidate.Proofs.BackendStages
