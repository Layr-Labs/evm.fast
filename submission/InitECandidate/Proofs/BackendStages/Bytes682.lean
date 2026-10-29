import InitECandidate.Proofs.BackendStages.Padded682
import InitECandidate.Proofs.BackendStages.BytesData682
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes682_eq : (Padded682.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes682 := by
  with_unfolding_all rfl
#print axioms sectionBytes682_eq
end InitECandidate.Proofs.BackendStages
