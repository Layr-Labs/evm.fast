import InitECandidate.Proofs.BackendStages.Padded742
import InitECandidate.Proofs.BackendStages.BytesData742
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes742_eq : (Padded742.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes742 := by
  with_unfolding_all rfl
#print axioms sectionBytes742_eq
end InitECandidate.Proofs.BackendStages
