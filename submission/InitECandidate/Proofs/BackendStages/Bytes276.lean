import InitECandidate.Proofs.BackendStages.Padded276
import InitECandidate.Proofs.BackendStages.BytesData276
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes276_eq : (Padded276.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes276 := by
  with_unfolding_all rfl
#print axioms sectionBytes276_eq
end InitECandidate.Proofs.BackendStages
