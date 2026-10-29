import InitECandidate.Proofs.BackendStages.Padded436
import InitECandidate.Proofs.BackendStages.BytesData436
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes436_eq : (Padded436.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes436 := by
  with_unfolding_all rfl
#print axioms sectionBytes436_eq
end InitECandidate.Proofs.BackendStages
