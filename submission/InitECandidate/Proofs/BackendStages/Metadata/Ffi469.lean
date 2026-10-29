import InitECandidate.Proofs.BackendStages.Metadata.Data469
import InitECandidate.Proofs.BackendStages.Filtered469
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis469_eq : ffiLines Filtered469.lines = localFfis469 := by
  with_unfolding_all rfl
theorem ffiStep469 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis469) : LabToTarget.findFfiNames (Filtered469 :: rest) = suffixFfis469 := by
  rw [findFfiNames_section, localFfis469_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep469
end InitECandidate.Proofs.BackendStages.Metadata
