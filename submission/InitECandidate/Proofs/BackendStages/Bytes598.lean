import InitECandidate.Proofs.BackendStages.Padded598
import InitECandidate.Proofs.BackendStages.BytesData598
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes598_eq : (Padded598.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes598 := by
  with_unfolding_all rfl
#print axioms sectionBytes598_eq
end InitECandidate.Proofs.BackendStages
