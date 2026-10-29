import InitECandidate.Proofs.BackendStages.Padded653
import InitECandidate.Proofs.BackendStages.BytesData653
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes653_eq : (Padded653.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes653 := by
  with_unfolding_all rfl
#print axioms sectionBytes653_eq
end InitECandidate.Proofs.BackendStages
