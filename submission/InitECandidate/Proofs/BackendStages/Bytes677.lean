import InitECandidate.Proofs.BackendStages.Padded677
import InitECandidate.Proofs.BackendStages.BytesData677
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes677_eq : (Padded677.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes677 := by
  with_unfolding_all rfl
#print axioms sectionBytes677_eq
end InitECandidate.Proofs.BackendStages
