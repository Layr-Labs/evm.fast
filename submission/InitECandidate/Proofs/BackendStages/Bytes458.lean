import InitECandidate.Proofs.BackendStages.Padded458
import InitECandidate.Proofs.BackendStages.BytesData458
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes458_eq : (Padded458.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes458 := by
  with_unfolding_all rfl
#print axioms sectionBytes458_eq
end InitECandidate.Proofs.BackendStages
