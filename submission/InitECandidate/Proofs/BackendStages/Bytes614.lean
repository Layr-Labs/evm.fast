import InitECandidate.Proofs.BackendStages.Padded614
import InitECandidate.Proofs.BackendStages.BytesData614
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes614_eq : (Padded614.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes614 := by
  with_unfolding_all rfl
#print axioms sectionBytes614_eq
end InitECandidate.Proofs.BackendStages
