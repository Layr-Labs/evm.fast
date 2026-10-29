import InitECandidate.Proofs.BackendStages.Padded464
import InitECandidate.Proofs.BackendStages.BytesData464
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes464_eq : (Padded464.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes464 := by
  with_unfolding_all rfl
#print axioms sectionBytes464_eq
end InitECandidate.Proofs.BackendStages
