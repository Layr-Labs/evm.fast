import InitECandidate.Proofs.BackendStages.Padded243
import InitECandidate.Proofs.BackendStages.BytesData243
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes243_eq : (Padded243.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes243 := by
  with_unfolding_all rfl
#print axioms sectionBytes243_eq
end InitECandidate.Proofs.BackendStages
