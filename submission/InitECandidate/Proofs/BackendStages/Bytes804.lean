import InitECandidate.Proofs.BackendStages.Padded804
import InitECandidate.Proofs.BackendStages.BytesData804
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes804_eq : (Padded804.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes804 := by
  with_unfolding_all rfl
#print axioms sectionBytes804_eq
end InitECandidate.Proofs.BackendStages
