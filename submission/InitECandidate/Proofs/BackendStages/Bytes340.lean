import InitECandidate.Proofs.BackendStages.Padded340
import InitECandidate.Proofs.BackendStages.BytesData340
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes340_eq : (Padded340.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes340 := by
  with_unfolding_all rfl
#print axioms sectionBytes340_eq
end InitECandidate.Proofs.BackendStages
