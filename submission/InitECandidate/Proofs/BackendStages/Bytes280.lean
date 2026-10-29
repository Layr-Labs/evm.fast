import InitECandidate.Proofs.BackendStages.Padded280
import InitECandidate.Proofs.BackendStages.BytesData280
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes280_eq : (Padded280.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes280 := by
  with_unfolding_all rfl
#print axioms sectionBytes280_eq
end InitECandidate.Proofs.BackendStages
