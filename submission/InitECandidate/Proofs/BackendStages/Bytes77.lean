import InitECandidate.Proofs.BackendStages.Padded77
import InitECandidate.Proofs.BackendStages.BytesData77
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes77_eq : (Padded77.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes77 := by
  with_unfolding_all rfl
#print axioms sectionBytes77_eq
end InitECandidate.Proofs.BackendStages
