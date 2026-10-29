import InitECandidate.Proofs.BackendStages.Padded361
import InitECandidate.Proofs.BackendStages.BytesData361
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes361_eq : (Padded361.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes361 := by
  with_unfolding_all rfl
#print axioms sectionBytes361_eq
end InitECandidate.Proofs.BackendStages
