import InitECandidate.Proofs.BackendStages.Metadata.Data398
import InitECandidate.Proofs.BackendStages.Filtered398
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis398_eq : ffiLines Filtered398.lines = localFfis398 := by
  with_unfolding_all rfl
theorem ffiStep398 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis398) : LabToTarget.findFfiNames (Filtered398 :: rest) = suffixFfis398 := by
  rw [findFfiNames_section, localFfis398_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep398
end InitECandidate.Proofs.BackendStages.Metadata
