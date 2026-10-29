import InitECandidate.Proofs.BackendStages.Padded513
import InitECandidate.Proofs.BackendStages.BytesData513
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes513_eq : (Padded513.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes513 := by
  with_unfolding_all rfl
#print axioms sectionBytes513_eq
end InitECandidate.Proofs.BackendStages
