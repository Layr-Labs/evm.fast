import InitECandidate.Proofs.BackendStages.Padded317
import InitECandidate.Proofs.BackendStages.BytesData317
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes317_eq : (Padded317.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes317 := by
  with_unfolding_all rfl
#print axioms sectionBytes317_eq
end InitECandidate.Proofs.BackendStages
