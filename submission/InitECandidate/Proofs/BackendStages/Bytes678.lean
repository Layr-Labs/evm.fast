import InitECandidate.Proofs.BackendStages.Padded678
import InitECandidate.Proofs.BackendStages.BytesData678
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes678_eq : (Padded678.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes678 := by
  with_unfolding_all rfl
#print axioms sectionBytes678_eq
end InitECandidate.Proofs.BackendStages
