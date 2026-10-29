import InitECandidate.Proofs.BackendStages.Metadata.Data89
import InitECandidate.Proofs.BackendStages.Filtered89
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis89_eq : ffiLines Filtered89.lines = localFfis89 := by
  with_unfolding_all rfl
theorem ffiStep89 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis89) : LabToTarget.findFfiNames (Filtered89 :: rest) = suffixFfis89 := by
  rw [findFfiNames_section, localFfis89_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep89
end InitECandidate.Proofs.BackendStages.Metadata
