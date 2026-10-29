import InitECandidate.Proofs.BackendStages.Padded496
import InitECandidate.Proofs.BackendStages.BytesData496
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes496_eq : (Padded496.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes496 := by
  with_unfolding_all rfl
#print axioms sectionBytes496_eq
end InitECandidate.Proofs.BackendStages
