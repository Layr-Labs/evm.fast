import InitECandidate.Proofs.BackendStages.Padded181
import InitECandidate.Proofs.BackendStages.BytesData181
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes181_eq : (Padded181.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes181 := by
  with_unfolding_all rfl
#print axioms sectionBytes181_eq
end InitECandidate.Proofs.BackendStages
