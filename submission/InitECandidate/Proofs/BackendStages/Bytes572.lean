import InitECandidate.Proofs.BackendStages.Padded572
import InitECandidate.Proofs.BackendStages.BytesData572
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes572_eq : (Padded572.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes572 := by
  with_unfolding_all rfl
#print axioms sectionBytes572_eq
end InitECandidate.Proofs.BackendStages
