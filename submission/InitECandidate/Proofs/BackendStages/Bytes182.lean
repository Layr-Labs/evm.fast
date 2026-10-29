import InitECandidate.Proofs.BackendStages.Padded182
import InitECandidate.Proofs.BackendStages.BytesData182
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes182_eq : (Padded182.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes182 := by
  with_unfolding_all rfl
#print axioms sectionBytes182_eq
end InitECandidate.Proofs.BackendStages
