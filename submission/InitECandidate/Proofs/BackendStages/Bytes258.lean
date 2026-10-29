import InitECandidate.Proofs.BackendStages.Padded258
import InitECandidate.Proofs.BackendStages.BytesData258
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes258_eq : (Padded258.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes258 := by
  with_unfolding_all rfl
#print axioms sectionBytes258_eq
end InitECandidate.Proofs.BackendStages
