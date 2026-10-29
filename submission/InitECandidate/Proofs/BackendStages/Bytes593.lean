import InitECandidate.Proofs.BackendStages.Padded593
import InitECandidate.Proofs.BackendStages.BytesData593
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes593_eq : (Padded593.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes593 := by
  with_unfolding_all rfl
#print axioms sectionBytes593_eq
end InitECandidate.Proofs.BackendStages
