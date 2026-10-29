import InitECandidate.Proofs.BackendStages.Padded515
import InitECandidate.Proofs.BackendStages.BytesData515
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes515_eq : (Padded515.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes515 := by
  with_unfolding_all rfl
#print axioms sectionBytes515_eq
end InitECandidate.Proofs.BackendStages
