import InitECandidate.Proofs.BackendStages.Padded753
import InitECandidate.Proofs.BackendStages.BytesData753
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes753_eq : (Padded753.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes753 := by
  with_unfolding_all rfl
#print axioms sectionBytes753_eq
end InitECandidate.Proofs.BackendStages
