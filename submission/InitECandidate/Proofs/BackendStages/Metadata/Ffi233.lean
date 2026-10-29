import InitECandidate.Proofs.BackendStages.Metadata.Data233
import InitECandidate.Proofs.BackendStages.Filtered233
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis233_eq : ffiLines Filtered233.lines = localFfis233 := by
  with_unfolding_all rfl
theorem ffiStep233 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis233) : LabToTarget.findFfiNames (Filtered233 :: rest) = suffixFfis233 := by
  rw [findFfiNames_section, localFfis233_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep233
end InitECandidate.Proofs.BackendStages.Metadata
