import InitECandidate.Proofs.BackendStages.Padded845
import InitECandidate.Proofs.BackendStages.BytesData845
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes845_eq : (Padded845.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes845 := by
  with_unfolding_all rfl
#print axioms sectionBytes845_eq
end InitECandidate.Proofs.BackendStages
