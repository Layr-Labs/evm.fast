import InitECandidate.Proofs.BackendStages.Padded447
import InitECandidate.Proofs.BackendStages.BytesData447
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes447_eq : (Padded447.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes447 := by
  with_unfolding_all rfl
#print axioms sectionBytes447_eq
end InitECandidate.Proofs.BackendStages
