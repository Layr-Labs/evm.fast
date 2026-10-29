import InitECandidate.Proofs.BackendStages.Padded372
import InitECandidate.Proofs.BackendStages.BytesData372
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes372_eq : (Padded372.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes372 := by
  with_unfolding_all rfl
#print axioms sectionBytes372_eq
end InitECandidate.Proofs.BackendStages
