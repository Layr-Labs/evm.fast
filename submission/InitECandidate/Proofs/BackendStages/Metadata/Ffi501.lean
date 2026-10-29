import InitECandidate.Proofs.BackendStages.Metadata.Data501
import InitECandidate.Proofs.BackendStages.Filtered501
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis501_eq : ffiLines Filtered501.lines = localFfis501 := by
  with_unfolding_all rfl
theorem ffiStep501 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis501) : LabToTarget.findFfiNames (Filtered501 :: rest) = suffixFfis501 := by
  rw [findFfiNames_section, localFfis501_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep501
end InitECandidate.Proofs.BackendStages.Metadata
