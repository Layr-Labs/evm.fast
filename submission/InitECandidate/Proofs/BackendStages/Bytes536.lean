import InitECandidate.Proofs.BackendStages.Padded536
import InitECandidate.Proofs.BackendStages.BytesData536
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes536_eq : (Padded536.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes536 := by
  with_unfolding_all rfl
#print axioms sectionBytes536_eq
end InitECandidate.Proofs.BackendStages
