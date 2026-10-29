import InitECandidate.Proofs.BackendStages.Padded607
import InitECandidate.Proofs.BackendStages.BytesData607
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes607_eq : (Padded607.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes607 := by
  with_unfolding_all rfl
#print axioms sectionBytes607_eq
end InitECandidate.Proofs.BackendStages
