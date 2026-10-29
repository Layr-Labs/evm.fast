import InitECandidate.Proofs.BackendStages.Padded322
import InitECandidate.Proofs.BackendStages.BytesData322
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes322_eq : (Padded322.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes322 := by
  with_unfolding_all rfl
#print axioms sectionBytes322_eq
end InitECandidate.Proofs.BackendStages
