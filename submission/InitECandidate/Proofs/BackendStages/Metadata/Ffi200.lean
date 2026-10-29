import InitECandidate.Proofs.BackendStages.Metadata.Data200
import InitECandidate.Proofs.BackendStages.Filtered200
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis200_eq : ffiLines Filtered200.lines = localFfis200 := by
  with_unfolding_all rfl
theorem ffiStep200 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis200) : LabToTarget.findFfiNames (Filtered200 :: rest) = suffixFfis200 := by
  rw [findFfiNames_section, localFfis200_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep200
end InitECandidate.Proofs.BackendStages.Metadata
