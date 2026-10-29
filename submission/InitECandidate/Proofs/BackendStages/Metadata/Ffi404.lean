import InitECandidate.Proofs.BackendStages.Metadata.Data404
import InitECandidate.Proofs.BackendStages.Filtered404
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis404_eq : ffiLines Filtered404.lines = localFfis404 := by
  with_unfolding_all rfl
theorem ffiStep404 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis404) : LabToTarget.findFfiNames (Filtered404 :: rest) = suffixFfis404 := by
  rw [findFfiNames_section, localFfis404_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep404
end InitECandidate.Proofs.BackendStages.Metadata
