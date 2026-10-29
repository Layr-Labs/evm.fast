import InitECandidate.Proofs.BackendStages.Padded522
import InitECandidate.Proofs.BackendStages.BytesData522
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes522_eq : (Padded522.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes522 := by
  with_unfolding_all rfl
#print axioms sectionBytes522_eq
end InitECandidate.Proofs.BackendStages
