import InitECandidate.Proofs.BackendStages.Padded428
import InitECandidate.Proofs.BackendStages.BytesData428
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes428_eq : (Padded428.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes428 := by
  with_unfolding_all rfl
#print axioms sectionBytes428_eq
end InitECandidate.Proofs.BackendStages
