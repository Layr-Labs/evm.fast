import InitECandidate.Proofs.BackendStages.Padded300
import InitECandidate.Proofs.BackendStages.BytesData300
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes300_eq : (Padded300.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes300 := by
  with_unfolding_all rfl
#print axioms sectionBytes300_eq
end InitECandidate.Proofs.BackendStages
