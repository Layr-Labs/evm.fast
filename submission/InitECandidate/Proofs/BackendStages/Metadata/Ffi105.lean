import InitECandidate.Proofs.BackendStages.Metadata.Data105
import InitECandidate.Proofs.BackendStages.Filtered105
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis105_eq : ffiLines Filtered105.lines = localFfis105 := by
  with_unfolding_all rfl
theorem ffiStep105 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis105) : LabToTarget.findFfiNames (Filtered105 :: rest) = suffixFfis105 := by
  rw [findFfiNames_section, localFfis105_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep105
end InitECandidate.Proofs.BackendStages.Metadata
