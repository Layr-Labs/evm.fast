import InitECandidate.Proofs.BackendStages.Padded123
import InitECandidate.Proofs.BackendStages.BytesData123
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes123_eq : (Padded123.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes123 := by
  with_unfolding_all rfl
#print axioms sectionBytes123_eq
end InitECandidate.Proofs.BackendStages
