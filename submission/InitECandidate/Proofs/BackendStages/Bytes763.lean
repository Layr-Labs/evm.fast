import InitECandidate.Proofs.BackendStages.Padded763
import InitECandidate.Proofs.BackendStages.BytesData763
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes763_eq : (Padded763.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes763 := by
  with_unfolding_all rfl
#print axioms sectionBytes763_eq
end InitECandidate.Proofs.BackendStages
