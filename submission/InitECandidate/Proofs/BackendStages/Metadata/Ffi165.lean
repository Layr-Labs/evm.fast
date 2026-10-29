import InitECandidate.Proofs.BackendStages.Metadata.Data165
import InitECandidate.Proofs.BackendStages.Filtered165
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis165_eq : ffiLines Filtered165.lines = localFfis165 := by
  with_unfolding_all rfl
theorem ffiStep165 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis165) : LabToTarget.findFfiNames (Filtered165 :: rest) = suffixFfis165 := by
  rw [findFfiNames_section, localFfis165_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep165
end InitECandidate.Proofs.BackendStages.Metadata
