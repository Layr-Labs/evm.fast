import InitECandidate.Proofs.BackendStages.Padded634
import InitECandidate.Proofs.BackendStages.BytesData634
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes634_eq : (Padded634.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes634 := by
  with_unfolding_all rfl
#print axioms sectionBytes634_eq
end InitECandidate.Proofs.BackendStages
