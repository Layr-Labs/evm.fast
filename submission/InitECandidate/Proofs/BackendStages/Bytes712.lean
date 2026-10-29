import InitECandidate.Proofs.BackendStages.Padded712
import InitECandidate.Proofs.BackendStages.BytesData712
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes712_eq : (Padded712.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes712 := by
  with_unfolding_all rfl
#print axioms sectionBytes712_eq
end InitECandidate.Proofs.BackendStages
