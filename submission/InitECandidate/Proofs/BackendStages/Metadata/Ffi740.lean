import InitECandidate.Proofs.BackendStages.Metadata.Data740
import InitECandidate.Proofs.BackendStages.Filtered740
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis740_eq : ffiLines Filtered740.lines = localFfis740 := by
  with_unfolding_all rfl
theorem ffiStep740 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis740) : LabToTarget.findFfiNames (Filtered740 :: rest) = suffixFfis740 := by
  rw [findFfiNames_section, localFfis740_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep740
end InitECandidate.Proofs.BackendStages.Metadata
