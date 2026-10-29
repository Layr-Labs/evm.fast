import InitECandidate.Proofs.BackendStages.Padded384
import InitECandidate.Proofs.BackendStages.BytesData384
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes384_eq : (Padded384.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes384 := by
  with_unfolding_all rfl
#print axioms sectionBytes384_eq
end InitECandidate.Proofs.BackendStages
