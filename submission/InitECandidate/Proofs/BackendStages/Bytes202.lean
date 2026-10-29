import InitECandidate.Proofs.BackendStages.Padded202
import InitECandidate.Proofs.BackendStages.BytesData202
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes202_eq : (Padded202.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes202 := by
  with_unfolding_all rfl
#print axioms sectionBytes202_eq
end InitECandidate.Proofs.BackendStages
