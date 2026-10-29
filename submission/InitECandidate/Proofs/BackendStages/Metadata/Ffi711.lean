import InitECandidate.Proofs.BackendStages.Metadata.Data711
import InitECandidate.Proofs.BackendStages.Filtered711
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis711_eq : ffiLines Filtered711.lines = localFfis711 := by
  with_unfolding_all rfl
theorem ffiStep711 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis711) : LabToTarget.findFfiNames (Filtered711 :: rest) = suffixFfis711 := by
  rw [findFfiNames_section, localFfis711_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep711
end InitECandidate.Proofs.BackendStages.Metadata
