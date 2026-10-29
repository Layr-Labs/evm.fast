import InitECandidate.Proofs.BackendStages.Metadata.Data871
import InitECandidate.Proofs.BackendStages.Filtered871
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis871_eq : ffiLines Filtered871.lines = localFfis871 := by
  with_unfolding_all rfl
theorem ffiStep871 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis871) : LabToTarget.findFfiNames (Filtered871 :: rest) = suffixFfis871 := by
  rw [findFfiNames_section, localFfis871_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep871
end InitECandidate.Proofs.BackendStages.Metadata
