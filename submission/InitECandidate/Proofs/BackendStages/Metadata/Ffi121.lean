import InitECandidate.Proofs.BackendStages.Metadata.Data121
import InitECandidate.Proofs.BackendStages.Filtered121
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis121_eq : ffiLines Filtered121.lines = localFfis121 := by
  with_unfolding_all rfl
theorem ffiStep121 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis121) : LabToTarget.findFfiNames (Filtered121 :: rest) = suffixFfis121 := by
  rw [findFfiNames_section, localFfis121_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep121
end InitECandidate.Proofs.BackendStages.Metadata
