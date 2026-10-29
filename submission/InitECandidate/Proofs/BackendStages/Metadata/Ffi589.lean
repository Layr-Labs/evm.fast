import InitECandidate.Proofs.BackendStages.Metadata.Data589
import InitECandidate.Proofs.BackendStages.Filtered589
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis589_eq : ffiLines Filtered589.lines = localFfis589 := by
  with_unfolding_all rfl
theorem ffiStep589 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis589) : LabToTarget.findFfiNames (Filtered589 :: rest) = suffixFfis589 := by
  rw [findFfiNames_section, localFfis589_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep589
end InitECandidate.Proofs.BackendStages.Metadata
