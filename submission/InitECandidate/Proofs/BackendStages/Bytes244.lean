import InitECandidate.Proofs.BackendStages.Padded244
import InitECandidate.Proofs.BackendStages.BytesData244
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes244_eq : (Padded244.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes244 := by
  with_unfolding_all rfl
#print axioms sectionBytes244_eq
end InitECandidate.Proofs.BackendStages
