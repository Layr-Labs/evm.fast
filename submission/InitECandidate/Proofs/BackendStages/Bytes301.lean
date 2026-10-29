import InitECandidate.Proofs.BackendStages.Padded301
import InitECandidate.Proofs.BackendStages.BytesData301
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes301_eq : (Padded301.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes301 := by
  with_unfolding_all rfl
#print axioms sectionBytes301_eq
end InitECandidate.Proofs.BackendStages
