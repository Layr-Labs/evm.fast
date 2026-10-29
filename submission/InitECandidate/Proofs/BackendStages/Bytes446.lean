import InitECandidate.Proofs.BackendStages.Padded446
import InitECandidate.Proofs.BackendStages.BytesData446
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes446_eq : (Padded446.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes446 := by
  with_unfolding_all rfl
#print axioms sectionBytes446_eq
end InitECandidate.Proofs.BackendStages
