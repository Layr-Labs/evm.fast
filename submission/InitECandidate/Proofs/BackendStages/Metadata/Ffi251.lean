import InitECandidate.Proofs.BackendStages.Metadata.Data251
import InitECandidate.Proofs.BackendStages.Filtered251
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis251_eq : ffiLines Filtered251.lines = localFfis251 := by
  with_unfolding_all rfl
theorem ffiStep251 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis251) : LabToTarget.findFfiNames (Filtered251 :: rest) = suffixFfis251 := by
  rw [findFfiNames_section, localFfis251_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep251
end InitECandidate.Proofs.BackendStages.Metadata
