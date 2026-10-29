import InitECandidate.Proofs.BackendStages.Padded611
import InitECandidate.Proofs.BackendStages.BytesData611
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes611_eq : (Padded611.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes611 := by
  with_unfolding_all rfl
#print axioms sectionBytes611_eq
end InitECandidate.Proofs.BackendStages
