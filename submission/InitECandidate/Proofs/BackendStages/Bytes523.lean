import InitECandidate.Proofs.BackendStages.Padded523
import InitECandidate.Proofs.BackendStages.BytesData523
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes523_eq : (Padded523.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes523 := by
  with_unfolding_all rfl
#print axioms sectionBytes523_eq
end InitECandidate.Proofs.BackendStages
