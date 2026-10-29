import InitECandidate.Proofs.BackendStages.Padded402
import InitECandidate.Proofs.BackendStages.BytesData402
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes402_eq : (Padded402.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes402 := by
  with_unfolding_all rfl
#print axioms sectionBytes402_eq
end InitECandidate.Proofs.BackendStages
