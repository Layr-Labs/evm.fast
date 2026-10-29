import InitECandidate.Proofs.BackendStages.Padded718
import InitECandidate.Proofs.BackendStages.BytesData718
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes718_eq : (Padded718.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes718 := by
  with_unfolding_all rfl
#print axioms sectionBytes718_eq
end InitECandidate.Proofs.BackendStages
