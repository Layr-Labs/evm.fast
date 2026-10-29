import InitECandidate.Proofs.BackendStages.Metadata.Data98
import InitECandidate.Proofs.BackendStages.Filtered98
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis98_eq : ffiLines Filtered98.lines = localFfis98 := by
  with_unfolding_all rfl
theorem ffiStep98 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis98) : LabToTarget.findFfiNames (Filtered98 :: rest) = suffixFfis98 := by
  rw [findFfiNames_section, localFfis98_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep98
end InitECandidate.Proofs.BackendStages.Metadata
