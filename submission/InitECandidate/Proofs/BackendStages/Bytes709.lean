import InitECandidate.Proofs.BackendStages.Padded709
import InitECandidate.Proofs.BackendStages.BytesData709
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes709_eq : (Padded709.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes709 := by
  with_unfolding_all rfl
#print axioms sectionBytes709_eq
end InitECandidate.Proofs.BackendStages
