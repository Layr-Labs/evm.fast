import InitECandidate.Proofs.BackendStages.Padded122
import InitECandidate.Proofs.BackendStages.BytesData122
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes122_eq : (Padded122.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes122 := by
  with_unfolding_all rfl
#print axioms sectionBytes122_eq
end InitECandidate.Proofs.BackendStages
