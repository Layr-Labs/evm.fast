import InitECandidate.Proofs.BackendStages.Padded803
import InitECandidate.Proofs.BackendStages.BytesData803
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes803_eq : (Padded803.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes803 := by
  with_unfolding_all rfl
#print axioms sectionBytes803_eq
end InitECandidate.Proofs.BackendStages
