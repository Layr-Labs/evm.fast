import InitECandidate.Proofs.BackendStages.Padded475
import InitECandidate.Proofs.BackendStages.BytesData475
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes475_eq : (Padded475.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes475 := by
  with_unfolding_all rfl
#print axioms sectionBytes475_eq
end InitECandidate.Proofs.BackendStages
