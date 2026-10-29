import InitECandidate.Proofs.BackendStages.Metadata.Data630
import InitECandidate.Proofs.BackendStages.Filtered630
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis630_eq : ffiLines Filtered630.lines = localFfis630 := by
  with_unfolding_all rfl
theorem ffiStep630 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis630) : LabToTarget.findFfiNames (Filtered630 :: rest) = suffixFfis630 := by
  rw [findFfiNames_section, localFfis630_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep630
end InitECandidate.Proofs.BackendStages.Metadata
