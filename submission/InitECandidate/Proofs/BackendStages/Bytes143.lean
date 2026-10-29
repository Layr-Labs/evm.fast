import InitECandidate.Proofs.BackendStages.Padded143
import InitECandidate.Proofs.BackendStages.BytesData143
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes143_eq : (Padded143.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes143 := by
  with_unfolding_all rfl
#print axioms sectionBytes143_eq
end InitECandidate.Proofs.BackendStages
