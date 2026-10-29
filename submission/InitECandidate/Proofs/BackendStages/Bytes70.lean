import InitECandidate.Proofs.BackendStages.Padded70
import InitECandidate.Proofs.BackendStages.BytesData70
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes70_eq : (Padded70.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes70 := by
  with_unfolding_all rfl
#print axioms sectionBytes70_eq
end InitECandidate.Proofs.BackendStages
