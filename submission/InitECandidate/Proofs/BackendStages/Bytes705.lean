import InitECandidate.Proofs.BackendStages.Padded705
import InitECandidate.Proofs.BackendStages.BytesData705
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes705_eq : (Padded705.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes705 := by
  with_unfolding_all rfl
#print axioms sectionBytes705_eq
end InitECandidate.Proofs.BackendStages
