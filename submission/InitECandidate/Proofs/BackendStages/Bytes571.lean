import InitECandidate.Proofs.BackendStages.Padded571
import InitECandidate.Proofs.BackendStages.BytesData571
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes571_eq : (Padded571.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes571 := by
  with_unfolding_all rfl
#print axioms sectionBytes571_eq
end InitECandidate.Proofs.BackendStages
