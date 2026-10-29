import InitECandidate.Proofs.BackendStages.Padded87
import InitECandidate.Proofs.BackendStages.BytesData87
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes87_eq : (Padded87.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes87 := by
  with_unfolding_all rfl
#print axioms sectionBytes87_eq
end InitECandidate.Proofs.BackendStages
