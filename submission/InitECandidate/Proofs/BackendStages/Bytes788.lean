import InitECandidate.Proofs.BackendStages.Padded788
import InitECandidate.Proofs.BackendStages.BytesData788
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes788_eq : (Padded788.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes788 := by
  with_unfolding_all rfl
#print axioms sectionBytes788_eq
end InitECandidate.Proofs.BackendStages
