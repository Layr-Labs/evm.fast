import InitECandidate.Proofs.BackendStages.Padded227
import InitECandidate.Proofs.BackendStages.BytesData227
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes227_eq : (Padded227.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes227 := by
  with_unfolding_all rfl
#print axioms sectionBytes227_eq
end InitECandidate.Proofs.BackendStages
