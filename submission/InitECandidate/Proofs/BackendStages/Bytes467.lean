import InitECandidate.Proofs.BackendStages.Padded467
import InitECandidate.Proofs.BackendStages.BytesData467
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes467_eq : (Padded467.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes467 := by
  with_unfolding_all rfl
#print axioms sectionBytes467_eq
end InitECandidate.Proofs.BackendStages
