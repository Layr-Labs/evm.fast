import InitECandidate.Proofs.BackendStages.Padded211
import InitECandidate.Proofs.BackendStages.BytesData211
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes211_eq : (Padded211.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes211 := by
  with_unfolding_all rfl
#print axioms sectionBytes211_eq
end InitECandidate.Proofs.BackendStages
