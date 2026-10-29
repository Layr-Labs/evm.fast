import InitECandidate.Proofs.BackendStages.Padded739
import InitECandidate.Proofs.BackendStages.BytesData739
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes739_eq : (Padded739.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes739 := by
  with_unfolding_all rfl
#print axioms sectionBytes739_eq
end InitECandidate.Proofs.BackendStages
