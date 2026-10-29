import InitECandidate.Proofs.BackendStages.Padded351
import InitECandidate.Proofs.BackendStages.BytesData351
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes351_eq : (Padded351.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes351 := by
  with_unfolding_all rfl
#print axioms sectionBytes351_eq
end InitECandidate.Proofs.BackendStages
