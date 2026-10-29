import InitECandidate.Proofs.BackendStages.Padded574
import InitECandidate.Proofs.BackendStages.BytesData574
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes574_eq : (Padded574.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes574 := by
  with_unfolding_all rfl
#print axioms sectionBytes574_eq
end InitECandidate.Proofs.BackendStages
