import InitECandidate.Proofs.BackendStages.Metadata.Data426
import InitECandidate.Proofs.BackendStages.Filtered426
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis426_eq : ffiLines Filtered426.lines = localFfis426 := by
  with_unfolding_all rfl
theorem ffiStep426 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis426) : LabToTarget.findFfiNames (Filtered426 :: rest) = suffixFfis426 := by
  rw [findFfiNames_section, localFfis426_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep426
end InitECandidate.Proofs.BackendStages.Metadata
