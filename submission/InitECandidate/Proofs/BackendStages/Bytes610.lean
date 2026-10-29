import InitECandidate.Proofs.BackendStages.Padded610
import InitECandidate.Proofs.BackendStages.BytesData610
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes610_eq : (Padded610.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes610 := by
  with_unfolding_all rfl
#print axioms sectionBytes610_eq
end InitECandidate.Proofs.BackendStages
