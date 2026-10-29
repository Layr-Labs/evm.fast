import InitECandidate.Proofs.BackendStages.Padded603
import InitECandidate.Proofs.BackendStages.BytesData603
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes603_eq : (Padded603.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes603 := by
  with_unfolding_all rfl
#print axioms sectionBytes603_eq
end InitECandidate.Proofs.BackendStages
