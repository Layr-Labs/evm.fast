import InitECandidate.Proofs.BackendStages.Padded222
import InitECandidate.Proofs.BackendStages.BytesData222
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes222_eq : (Padded222.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes222 := by
  with_unfolding_all rfl
#print axioms sectionBytes222_eq
end InitECandidate.Proofs.BackendStages
