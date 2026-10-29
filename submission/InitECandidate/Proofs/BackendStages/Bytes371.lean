import InitECandidate.Proofs.BackendStages.Padded371
import InitECandidate.Proofs.BackendStages.BytesData371
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes371_eq : (Padded371.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes371 := by
  with_unfolding_all rfl
#print axioms sectionBytes371_eq
end InitECandidate.Proofs.BackendStages
