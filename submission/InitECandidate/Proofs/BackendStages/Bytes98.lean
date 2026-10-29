import InitECandidate.Proofs.BackendStages.Padded98
import InitECandidate.Proofs.BackendStages.BytesData98
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes98_eq : (Padded98.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes98 := by
  with_unfolding_all rfl
#print axioms sectionBytes98_eq
end InitECandidate.Proofs.BackendStages
