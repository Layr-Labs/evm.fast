import InitECandidate.Proofs.BackendStages.Padded287
import InitECandidate.Proofs.BackendStages.BytesData287
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes287_eq : (Padded287.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes287 := by
  with_unfolding_all rfl
#print axioms sectionBytes287_eq
end InitECandidate.Proofs.BackendStages
