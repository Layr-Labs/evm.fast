import InitECandidate.Proofs.BackendStages.Padded502
import InitECandidate.Proofs.BackendStages.BytesData502
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes502_eq : (Padded502.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes502 := by
  with_unfolding_all rfl
#print axioms sectionBytes502_eq
end InitECandidate.Proofs.BackendStages
