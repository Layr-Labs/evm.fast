import InitECandidate.Proofs.BackendStages.Padded820
import InitECandidate.Proofs.BackendStages.BytesData820
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes820_eq : (Padded820.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes820 := by
  with_unfolding_all rfl
#print axioms sectionBytes820_eq
end InitECandidate.Proofs.BackendStages
