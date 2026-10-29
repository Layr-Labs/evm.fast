import InitECandidate.Proofs.BackendStages.Padded126
import InitECandidate.Proofs.BackendStages.BytesData126
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes126_eq : (Padded126.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes126 := by
  with_unfolding_all rfl
#print axioms sectionBytes126_eq
end InitECandidate.Proofs.BackendStages
