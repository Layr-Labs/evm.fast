import InitECandidate.Proofs.BackendStages.Padded196
import InitECandidate.Proofs.BackendStages.BytesData196
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes196_eq : (Padded196.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes196 := by
  with_unfolding_all rfl
#print axioms sectionBytes196_eq
end InitECandidate.Proofs.BackendStages
