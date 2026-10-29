import InitECandidate.Proofs.BackendStages.Padded359
import InitECandidate.Proofs.BackendStages.BytesData359
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes359_eq : (Padded359.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes359 := by
  with_unfolding_all rfl
#print axioms sectionBytes359_eq
end InitECandidate.Proofs.BackendStages
