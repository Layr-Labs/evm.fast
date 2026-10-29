import InitECandidate.Proofs.BackendStages.Metadata.Data331
import InitECandidate.Proofs.BackendStages.Filtered331
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis331_eq : ffiLines Filtered331.lines = localFfis331 := by
  with_unfolding_all rfl
theorem ffiStep331 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis331) : LabToTarget.findFfiNames (Filtered331 :: rest) = suffixFfis331 := by
  rw [findFfiNames_section, localFfis331_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep331
end InitECandidate.Proofs.BackendStages.Metadata
