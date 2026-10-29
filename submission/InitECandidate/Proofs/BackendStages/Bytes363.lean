import InitECandidate.Proofs.BackendStages.Padded363
import InitECandidate.Proofs.BackendStages.BytesData363
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes363_eq : (Padded363.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes363 := by
  with_unfolding_all rfl
#print axioms sectionBytes363_eq
end InitECandidate.Proofs.BackendStages
