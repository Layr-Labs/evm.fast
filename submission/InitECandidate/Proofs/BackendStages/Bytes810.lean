import InitECandidate.Proofs.BackendStages.Padded810
import InitECandidate.Proofs.BackendStages.BytesData810
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes810_eq : (Padded810.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes810 := by
  with_unfolding_all rfl
#print axioms sectionBytes810_eq
end InitECandidate.Proofs.BackendStages
