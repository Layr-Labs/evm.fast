import InitECandidate.Proofs.BackendStages.Metadata.Data558
import InitECandidate.Proofs.BackendStages.Filtered558
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis558_eq : ffiLines Filtered558.lines = localFfis558 := by
  with_unfolding_all rfl
theorem ffiStep558 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis558) : LabToTarget.findFfiNames (Filtered558 :: rest) = suffixFfis558 := by
  rw [findFfiNames_section, localFfis558_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep558
end InitECandidate.Proofs.BackendStages.Metadata
