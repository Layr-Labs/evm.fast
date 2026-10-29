import InitECandidate.Proofs.BackendStages.Padded112
import InitECandidate.Proofs.BackendStages.BytesData112
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes112_eq : (Padded112.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes112 := by
  with_unfolding_all rfl
#print axioms sectionBytes112_eq
end InitECandidate.Proofs.BackendStages
