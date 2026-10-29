import InitECandidate.Proofs.BackendStages.Padded409
import InitECandidate.Proofs.BackendStages.BytesData409
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes409_eq : (Padded409.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes409 := by
  with_unfolding_all rfl
#print axioms sectionBytes409_eq
end InitECandidate.Proofs.BackendStages
