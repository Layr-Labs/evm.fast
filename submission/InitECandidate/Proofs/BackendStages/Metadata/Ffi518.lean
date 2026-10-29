import InitECandidate.Proofs.BackendStages.Metadata.Data518
import InitECandidate.Proofs.BackendStages.Filtered518
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis518_eq : ffiLines Filtered518.lines = localFfis518 := by
  with_unfolding_all rfl
theorem ffiStep518 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis518) : LabToTarget.findFfiNames (Filtered518 :: rest) = suffixFfis518 := by
  rw [findFfiNames_section, localFfis518_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep518
end InitECandidate.Proofs.BackendStages.Metadata
