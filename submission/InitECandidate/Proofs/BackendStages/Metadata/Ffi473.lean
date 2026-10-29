import InitECandidate.Proofs.BackendStages.Metadata.Data473
import InitECandidate.Proofs.BackendStages.Filtered473
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis473_eq : ffiLines Filtered473.lines = localFfis473 := by
  with_unfolding_all rfl
theorem ffiStep473 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis473) : LabToTarget.findFfiNames (Filtered473 :: rest) = suffixFfis473 := by
  rw [findFfiNames_section, localFfis473_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep473
end InitECandidate.Proofs.BackendStages.Metadata
