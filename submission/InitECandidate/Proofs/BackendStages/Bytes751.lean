import InitECandidate.Proofs.BackendStages.Padded751
import InitECandidate.Proofs.BackendStages.BytesData751
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes751_eq : (Padded751.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes751 := by
  with_unfolding_all rfl
#print axioms sectionBytes751_eq
end InitECandidate.Proofs.BackendStages
