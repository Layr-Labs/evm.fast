import InitECandidate.Proofs.BackendStages.Metadata.Data335
import InitECandidate.Proofs.BackendStages.Filtered335
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis335_eq : ffiLines Filtered335.lines = localFfis335 := by
  with_unfolding_all rfl
theorem ffiStep335 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis335) : LabToTarget.findFfiNames (Filtered335 :: rest) = suffixFfis335 := by
  rw [findFfiNames_section, localFfis335_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep335
end InitECandidate.Proofs.BackendStages.Metadata
