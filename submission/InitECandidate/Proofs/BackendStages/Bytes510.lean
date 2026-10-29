import InitECandidate.Proofs.BackendStages.Padded510
import InitECandidate.Proofs.BackendStages.BytesData510
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes510_eq : (Padded510.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes510 := by
  with_unfolding_all rfl
#print axioms sectionBytes510_eq
end InitECandidate.Proofs.BackendStages
