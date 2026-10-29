import InitECandidate.Proofs.BackendStages.Metadata.Data280
import InitECandidate.Proofs.BackendStages.Filtered280
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis280_eq : ffiLines Filtered280.lines = localFfis280 := by
  with_unfolding_all rfl
theorem ffiStep280 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis280) : LabToTarget.findFfiNames (Filtered280 :: rest) = suffixFfis280 := by
  rw [findFfiNames_section, localFfis280_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep280
end InitECandidate.Proofs.BackendStages.Metadata
