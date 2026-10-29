import InitECandidate.Proofs.BackendStages.Metadata.Data814
import InitECandidate.Proofs.BackendStages.Filtered814
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis814_eq : ffiLines Filtered814.lines = localFfis814 := by
  with_unfolding_all rfl
theorem ffiStep814 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis814) : LabToTarget.findFfiNames (Filtered814 :: rest) = suffixFfis814 := by
  rw [findFfiNames_section, localFfis814_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep814
end InitECandidate.Proofs.BackendStages.Metadata
