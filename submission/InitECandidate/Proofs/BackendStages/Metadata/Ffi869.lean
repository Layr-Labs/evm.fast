import InitECandidate.Proofs.BackendStages.Metadata.Data869
import InitECandidate.Proofs.BackendStages.Filtered869
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis869_eq : ffiLines Filtered869.lines = localFfis869 := by
  with_unfolding_all rfl
theorem ffiStep869 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis869) : LabToTarget.findFfiNames (Filtered869 :: rest) = suffixFfis869 := by
  rw [findFfiNames_section, localFfis869_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep869
end InitECandidate.Proofs.BackendStages.Metadata
