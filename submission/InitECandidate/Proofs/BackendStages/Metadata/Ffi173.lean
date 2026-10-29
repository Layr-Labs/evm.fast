import InitECandidate.Proofs.BackendStages.Metadata.Data173
import InitECandidate.Proofs.BackendStages.Filtered173
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis173_eq : ffiLines Filtered173.lines = localFfis173 := by
  with_unfolding_all rfl
theorem ffiStep173 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis173) : LabToTarget.findFfiNames (Filtered173 :: rest) = suffixFfis173 := by
  rw [findFfiNames_section, localFfis173_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep173
end InitECandidate.Proofs.BackendStages.Metadata
