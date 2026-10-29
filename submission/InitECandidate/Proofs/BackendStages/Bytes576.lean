import InitECandidate.Proofs.BackendStages.Padded576
import InitECandidate.Proofs.BackendStages.BytesData576
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes576_eq : (Padded576.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes576 := by
  with_unfolding_all rfl
#print axioms sectionBytes576_eq
end InitECandidate.Proofs.BackendStages
