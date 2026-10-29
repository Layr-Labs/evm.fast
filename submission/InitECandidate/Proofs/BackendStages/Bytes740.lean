import InitECandidate.Proofs.BackendStages.Padded740
import InitECandidate.Proofs.BackendStages.BytesData740
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes740_eq : (Padded740.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes740 := by
  with_unfolding_all rfl
#print axioms sectionBytes740_eq
end InitECandidate.Proofs.BackendStages
