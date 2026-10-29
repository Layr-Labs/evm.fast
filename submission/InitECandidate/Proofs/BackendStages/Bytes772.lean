import InitECandidate.Proofs.BackendStages.Padded772
import InitECandidate.Proofs.BackendStages.BytesData772
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes772_eq : (Padded772.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes772 := by
  with_unfolding_all rfl
#print axioms sectionBytes772_eq
end InitECandidate.Proofs.BackendStages
