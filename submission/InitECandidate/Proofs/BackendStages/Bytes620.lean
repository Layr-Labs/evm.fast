import InitECandidate.Proofs.BackendStages.Padded620
import InitECandidate.Proofs.BackendStages.BytesData620
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes620_eq : (Padded620.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes620 := by
  with_unfolding_all rfl
#print axioms sectionBytes620_eq
end InitECandidate.Proofs.BackendStages
