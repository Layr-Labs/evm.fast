import InitECandidate.Proofs.BackendStages.Metadata.Data235
import InitECandidate.Proofs.BackendStages.Filtered235
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis235_eq : ffiLines Filtered235.lines = localFfis235 := by
  with_unfolding_all rfl
theorem ffiStep235 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis235) : LabToTarget.findFfiNames (Filtered235 :: rest) = suffixFfis235 := by
  rw [findFfiNames_section, localFfis235_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep235
end InitECandidate.Proofs.BackendStages.Metadata
