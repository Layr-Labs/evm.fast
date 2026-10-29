import InitECandidate.Proofs.BackendStages.Metadata.Data344
import InitECandidate.Proofs.BackendStages.Filtered344
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis344_eq : ffiLines Filtered344.lines = localFfis344 := by
  with_unfolding_all rfl
theorem ffiStep344 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis344) : LabToTarget.findFfiNames (Filtered344 :: rest) = suffixFfis344 := by
  rw [findFfiNames_section, localFfis344_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep344
end InitECandidate.Proofs.BackendStages.Metadata
