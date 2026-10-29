import InitECandidate.Proofs.BackendStages.Padded200
import InitECandidate.Proofs.BackendStages.BytesData200
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes200_eq : (Padded200.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes200 := by
  with_unfolding_all rfl
#print axioms sectionBytes200_eq
end InitECandidate.Proofs.BackendStages
