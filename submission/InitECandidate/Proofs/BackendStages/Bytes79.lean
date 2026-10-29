import InitECandidate.Proofs.BackendStages.Padded79
import InitECandidate.Proofs.BackendStages.BytesData79
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes79_eq : (Padded79.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes79 := by
  with_unfolding_all rfl
#print axioms sectionBytes79_eq
end InitECandidate.Proofs.BackendStages
