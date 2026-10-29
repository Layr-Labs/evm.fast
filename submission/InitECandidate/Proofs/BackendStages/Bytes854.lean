import InitECandidate.Proofs.BackendStages.Padded854
import InitECandidate.Proofs.BackendStages.BytesData854
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes854_eq : (Padded854.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes854 := by
  with_unfolding_all rfl
#print axioms sectionBytes854_eq
end InitECandidate.Proofs.BackendStages
