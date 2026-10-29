import InitECandidate.Proofs.BackendStages.Padded519
import InitECandidate.Proofs.BackendStages.BytesData519
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes519_eq : (Padded519.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes519 := by
  with_unfolding_all rfl
#print axioms sectionBytes519_eq
end InitECandidate.Proofs.BackendStages
