import InitECandidate.Proofs.BackendStages.Padded674
import InitECandidate.Proofs.BackendStages.BytesData674
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes674_eq : (Padded674.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes674 := by
  with_unfolding_all rfl
#print axioms sectionBytes674_eq
end InitECandidate.Proofs.BackendStages
