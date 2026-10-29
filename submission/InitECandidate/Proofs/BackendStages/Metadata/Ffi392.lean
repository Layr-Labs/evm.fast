import InitECandidate.Proofs.BackendStages.Metadata.Data392
import InitECandidate.Proofs.BackendStages.Filtered392
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis392_eq : ffiLines Filtered392.lines = localFfis392 := by
  with_unfolding_all rfl
theorem ffiStep392 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis392) : LabToTarget.findFfiNames (Filtered392 :: rest) = suffixFfis392 := by
  rw [findFfiNames_section, localFfis392_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep392
end InitECandidate.Proofs.BackendStages.Metadata
