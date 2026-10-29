import InitECandidate.Proofs.BackendStages.Padded499
import InitECandidate.Proofs.BackendStages.BytesData499
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes499_eq : (Padded499.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes499 := by
  with_unfolding_all rfl
#print axioms sectionBytes499_eq
end InitECandidate.Proofs.BackendStages
