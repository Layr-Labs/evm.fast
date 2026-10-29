import InitECandidate.Proofs.BackendStages.Padded665
import InitECandidate.Proofs.BackendStages.BytesData665
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes665_eq : (Padded665.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes665 := by
  with_unfolding_all rfl
#print axioms sectionBytes665_eq
end InitECandidate.Proofs.BackendStages
