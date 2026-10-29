import InitECandidate.Proofs.BackendStages.Padded658
import InitECandidate.Proofs.BackendStages.BytesData658
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes658_eq : (Padded658.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes658 := by
  with_unfolding_all rfl
#print axioms sectionBytes658_eq
end InitECandidate.Proofs.BackendStages
