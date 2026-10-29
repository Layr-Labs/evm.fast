import InitECandidate.Proofs.BackendStages.Padded721
import InitECandidate.Proofs.BackendStages.BytesData721
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes721_eq : (Padded721.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes721 := by
  with_unfolding_all rfl
#print axioms sectionBytes721_eq
end InitECandidate.Proofs.BackendStages
