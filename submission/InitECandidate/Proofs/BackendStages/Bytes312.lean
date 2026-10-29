import InitECandidate.Proofs.BackendStages.Padded312
import InitECandidate.Proofs.BackendStages.BytesData312
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes312_eq : (Padded312.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes312 := by
  with_unfolding_all rfl
#print axioms sectionBytes312_eq
end InitECandidate.Proofs.BackendStages
