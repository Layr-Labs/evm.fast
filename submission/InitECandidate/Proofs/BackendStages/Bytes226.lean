import InitECandidate.Proofs.BackendStages.Padded226
import InitECandidate.Proofs.BackendStages.BytesData226
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes226_eq : (Padded226.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes226 := by
  with_unfolding_all rfl
#print axioms sectionBytes226_eq
end InitECandidate.Proofs.BackendStages
