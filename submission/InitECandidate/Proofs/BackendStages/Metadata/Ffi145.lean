import InitECandidate.Proofs.BackendStages.Metadata.Data145
import InitECandidate.Proofs.BackendStages.Filtered145
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis145_eq : ffiLines Filtered145.lines = localFfis145 := by
  with_unfolding_all rfl
theorem ffiStep145 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis145) : LabToTarget.findFfiNames (Filtered145 :: rest) = suffixFfis145 := by
  rw [findFfiNames_section, localFfis145_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep145
end InitECandidate.Proofs.BackendStages.Metadata
