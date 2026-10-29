import InitECandidate.Proofs.BackendStages.Metadata.Data747
import InitECandidate.Proofs.BackendStages.Filtered747
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis747_eq : ffiLines Filtered747.lines = localFfis747 := by
  with_unfolding_all rfl
theorem ffiStep747 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis747) : LabToTarget.findFfiNames (Filtered747 :: rest) = suffixFfis747 := by
  rw [findFfiNames_section, localFfis747_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep747
end InitECandidate.Proofs.BackendStages.Metadata
