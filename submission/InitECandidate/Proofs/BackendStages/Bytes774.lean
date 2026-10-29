import InitECandidate.Proofs.BackendStages.Padded774
import InitECandidate.Proofs.BackendStages.BytesData774
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes774_eq : (Padded774.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes774 := by
  with_unfolding_all rfl
#print axioms sectionBytes774_eq
end InitECandidate.Proofs.BackendStages
