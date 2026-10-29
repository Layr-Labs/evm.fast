import InitECandidate.Proofs.BackendStages.Metadata.Data491
import InitECandidate.Proofs.BackendStages.Filtered491
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis491_eq : ffiLines Filtered491.lines = localFfis491 := by
  with_unfolding_all rfl
theorem ffiStep491 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis491) : LabToTarget.findFfiNames (Filtered491 :: rest) = suffixFfis491 := by
  rw [findFfiNames_section, localFfis491_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep491
end InitECandidate.Proofs.BackendStages.Metadata
