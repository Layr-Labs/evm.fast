import InitECandidate.Proofs.BackendStages.Padded346
import InitECandidate.Proofs.BackendStages.BytesData346
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes346_eq : (Padded346.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes346 := by
  with_unfolding_all rfl
#print axioms sectionBytes346_eq
end InitECandidate.Proofs.BackendStages
