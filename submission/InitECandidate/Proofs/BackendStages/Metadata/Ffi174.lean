import InitECandidate.Proofs.BackendStages.Metadata.Data174
import InitECandidate.Proofs.BackendStages.Filtered174
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis174_eq : ffiLines Filtered174.lines = localFfis174 := by
  with_unfolding_all rfl
theorem ffiStep174 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis174) : LabToTarget.findFfiNames (Filtered174 :: rest) = suffixFfis174 := by
  rw [findFfiNames_section, localFfis174_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep174
end InitECandidate.Proofs.BackendStages.Metadata
