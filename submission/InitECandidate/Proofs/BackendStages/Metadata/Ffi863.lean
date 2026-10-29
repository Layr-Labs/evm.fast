import InitECandidate.Proofs.BackendStages.Metadata.Data863
import InitECandidate.Proofs.BackendStages.Filtered863
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis863_eq : ffiLines Filtered863.lines = localFfis863 := by
  with_unfolding_all rfl
theorem ffiStep863 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis863) : LabToTarget.findFfiNames (Filtered863 :: rest) = suffixFfis863 := by
  rw [findFfiNames_section, localFfis863_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep863
end InitECandidate.Proofs.BackendStages.Metadata
