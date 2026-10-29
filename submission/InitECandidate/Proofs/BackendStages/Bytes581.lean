import InitECandidate.Proofs.BackendStages.Padded581
import InitECandidate.Proofs.BackendStages.BytesData581
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes581_eq : (Padded581.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes581 := by
  with_unfolding_all rfl
#print axioms sectionBytes581_eq
end InitECandidate.Proofs.BackendStages
