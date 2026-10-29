import InitECandidate.Proofs.BackendStages.Padded414
import InitECandidate.Proofs.BackendStages.BytesData414
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes414_eq : (Padded414.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes414 := by
  with_unfolding_all rfl
#print axioms sectionBytes414_eq
end InitECandidate.Proofs.BackendStages
