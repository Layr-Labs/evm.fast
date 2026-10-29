import InitECandidate.Proofs.BackendStages.Metadata.Data129
import InitECandidate.Proofs.BackendStages.Filtered129
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis129_eq : ffiLines Filtered129.lines = localFfis129 := by
  with_unfolding_all rfl
theorem ffiStep129 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis129) : LabToTarget.findFfiNames (Filtered129 :: rest) = suffixFfis129 := by
  rw [findFfiNames_section, localFfis129_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep129
end InitECandidate.Proofs.BackendStages.Metadata
