import InitECandidate.Proofs.BackendStages.Padded108
import InitECandidate.Proofs.BackendStages.BytesData108
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes108_eq : (Padded108.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes108 := by
  with_unfolding_all rfl
#print axioms sectionBytes108_eq
end InitECandidate.Proofs.BackendStages
