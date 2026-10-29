import InitECandidate.Proofs.BackendStages.Metadata.Data390
import InitECandidate.Proofs.BackendStages.Filtered390
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis390_eq : ffiLines Filtered390.lines = localFfis390 := by
  with_unfolding_all rfl
theorem ffiStep390 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis390) : LabToTarget.findFfiNames (Filtered390 :: rest) = suffixFfis390 := by
  rw [findFfiNames_section, localFfis390_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep390
end InitECandidate.Proofs.BackendStages.Metadata
