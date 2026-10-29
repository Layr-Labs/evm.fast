import InitECandidate.Proofs.BackendStages.Padded685
import InitECandidate.Proofs.BackendStages.BytesData685
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes685_eq : (Padded685.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes685 := by
  with_unfolding_all rfl
#print axioms sectionBytes685_eq
end InitECandidate.Proofs.BackendStages
