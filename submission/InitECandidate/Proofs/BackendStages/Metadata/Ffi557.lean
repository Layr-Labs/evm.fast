import InitECandidate.Proofs.BackendStages.Metadata.Data557
import InitECandidate.Proofs.BackendStages.Filtered557
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis557_eq : ffiLines Filtered557.lines = localFfis557 := by
  with_unfolding_all rfl
theorem ffiStep557 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis557) : LabToTarget.findFfiNames (Filtered557 :: rest) = suffixFfis557 := by
  rw [findFfiNames_section, localFfis557_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep557
end InitECandidate.Proofs.BackendStages.Metadata
