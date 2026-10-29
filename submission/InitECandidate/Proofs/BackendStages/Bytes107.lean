import InitECandidate.Proofs.BackendStages.Padded107
import InitECandidate.Proofs.BackendStages.BytesData107
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes107_eq : (Padded107.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes107 := by
  with_unfolding_all rfl
#print axioms sectionBytes107_eq
end InitECandidate.Proofs.BackendStages
