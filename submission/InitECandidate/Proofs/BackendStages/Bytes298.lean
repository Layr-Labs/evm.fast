import InitECandidate.Proofs.BackendStages.Padded298
import InitECandidate.Proofs.BackendStages.BytesData298
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes298_eq : (Padded298.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes298 := by
  with_unfolding_all rfl
#print axioms sectionBytes298_eq
end InitECandidate.Proofs.BackendStages
