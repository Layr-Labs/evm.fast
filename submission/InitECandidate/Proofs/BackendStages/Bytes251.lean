import InitECandidate.Proofs.BackendStages.Padded251
import InitECandidate.Proofs.BackendStages.BytesData251
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes251_eq : (Padded251.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes251 := by
  with_unfolding_all rfl
#print axioms sectionBytes251_eq
end InitECandidate.Proofs.BackendStages
