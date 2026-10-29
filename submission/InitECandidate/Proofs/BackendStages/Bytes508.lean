import InitECandidate.Proofs.BackendStages.Padded508
import InitECandidate.Proofs.BackendStages.BytesData508
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes508_eq : (Padded508.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes508 := by
  with_unfolding_all rfl
#print axioms sectionBytes508_eq
end InitECandidate.Proofs.BackendStages
