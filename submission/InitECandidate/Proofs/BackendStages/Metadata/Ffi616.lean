import InitECandidate.Proofs.BackendStages.Metadata.Data616
import InitECandidate.Proofs.BackendStages.Filtered616
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis616_eq : ffiLines Filtered616.lines = localFfis616 := by
  with_unfolding_all rfl
theorem ffiStep616 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis616) : LabToTarget.findFfiNames (Filtered616 :: rest) = suffixFfis616 := by
  rw [findFfiNames_section, localFfis616_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep616
end InitECandidate.Proofs.BackendStages.Metadata
