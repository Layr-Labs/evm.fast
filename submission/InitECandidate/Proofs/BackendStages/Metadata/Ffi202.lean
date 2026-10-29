import InitECandidate.Proofs.BackendStages.Metadata.Data202
import InitECandidate.Proofs.BackendStages.Filtered202
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis202_eq : ffiLines Filtered202.lines = localFfis202 := by
  with_unfolding_all rfl
theorem ffiStep202 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis202) : LabToTarget.findFfiNames (Filtered202 :: rest) = suffixFfis202 := by
  rw [findFfiNames_section, localFfis202_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep202
end InitECandidate.Proofs.BackendStages.Metadata
