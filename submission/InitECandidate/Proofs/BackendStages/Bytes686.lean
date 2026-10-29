import InitECandidate.Proofs.BackendStages.Padded686
import InitECandidate.Proofs.BackendStages.BytesData686
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes686_eq : (Padded686.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes686 := by
  with_unfolding_all rfl
#print axioms sectionBytes686_eq
end InitECandidate.Proofs.BackendStages
