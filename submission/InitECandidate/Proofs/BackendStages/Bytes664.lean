import InitECandidate.Proofs.BackendStages.Padded664
import InitECandidate.Proofs.BackendStages.BytesData664
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes664_eq : (Padded664.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes664 := by
  with_unfolding_all rfl
#print axioms sectionBytes664_eq
end InitECandidate.Proofs.BackendStages
