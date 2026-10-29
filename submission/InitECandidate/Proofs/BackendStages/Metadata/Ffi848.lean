import InitECandidate.Proofs.BackendStages.Metadata.Data848
import InitECandidate.Proofs.BackendStages.Filtered848
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis848_eq : ffiLines Filtered848.lines = localFfis848 := by
  with_unfolding_all rfl
theorem ffiStep848 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis848) : LabToTarget.findFfiNames (Filtered848 :: rest) = suffixFfis848 := by
  rw [findFfiNames_section, localFfis848_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep848
end InitECandidate.Proofs.BackendStages.Metadata
