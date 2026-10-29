import InitECandidate.Proofs.BackendStages.Metadata.Data483
import InitECandidate.Proofs.BackendStages.Filtered483
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis483_eq : ffiLines Filtered483.lines = localFfis483 := by
  with_unfolding_all rfl
theorem ffiStep483 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis483) : LabToTarget.findFfiNames (Filtered483 :: rest) = suffixFfis483 := by
  rw [findFfiNames_section, localFfis483_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep483
end InitECandidate.Proofs.BackendStages.Metadata
