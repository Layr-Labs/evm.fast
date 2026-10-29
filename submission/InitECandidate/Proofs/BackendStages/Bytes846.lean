import InitECandidate.Proofs.BackendStages.Padded846
import InitECandidate.Proofs.BackendStages.BytesData846
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes846_eq : (Padded846.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes846 := by
  with_unfolding_all rfl
#print axioms sectionBytes846_eq
end InitECandidate.Proofs.BackendStages
