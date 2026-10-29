import InitECandidate.Proofs.BackendStages.Padded604
import InitECandidate.Proofs.BackendStages.BytesData604
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes604_eq : (Padded604.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes604 := by
  with_unfolding_all rfl
#print axioms sectionBytes604_eq
end InitECandidate.Proofs.BackendStages
