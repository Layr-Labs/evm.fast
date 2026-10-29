import InitECandidate.Proofs.BackendStages.Padded587
import InitECandidate.Proofs.BackendStages.BytesData587
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes587_eq : (Padded587.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes587 := by
  with_unfolding_all rfl
#print axioms sectionBytes587_eq
end InitECandidate.Proofs.BackendStages
