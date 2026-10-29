import InitECandidate.Proofs.BackendStages.Padded90
import InitECandidate.Proofs.BackendStages.BytesData90
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes90_eq : (Padded90.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes90 := by
  with_unfolding_all rfl
#print axioms sectionBytes90_eq
end InitECandidate.Proofs.BackendStages
