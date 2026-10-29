import InitECandidate.Proofs.BackendStages.Padded618
import InitECandidate.Proofs.BackendStages.BytesData618
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes618_eq : (Padded618.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes618 := by
  with_unfolding_all rfl
#print axioms sectionBytes618_eq
end InitECandidate.Proofs.BackendStages
