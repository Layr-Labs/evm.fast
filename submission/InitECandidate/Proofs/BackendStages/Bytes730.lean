import InitECandidate.Proofs.BackendStages.Padded730
import InitECandidate.Proofs.BackendStages.BytesData730
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes730_eq : (Padded730.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes730 := by
  with_unfolding_all rfl
#print axioms sectionBytes730_eq
end InitECandidate.Proofs.BackendStages
