import InitECandidate.Proofs.BackendStages.Padded826
import InitECandidate.Proofs.BackendStages.BytesData826
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes826_eq : (Padded826.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes826 := by
  with_unfolding_all rfl
#print axioms sectionBytes826_eq
end InitECandidate.Proofs.BackendStages
