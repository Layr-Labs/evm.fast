import InitECandidate.Proofs.BackendStages.Padded857
import InitECandidate.Proofs.BackendStages.BytesData857
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes857_eq : (Padded857.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes857 := by
  with_unfolding_all rfl
#print axioms sectionBytes857_eq
end InitECandidate.Proofs.BackendStages
