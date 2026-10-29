import InitECandidate.Proofs.BackendStages.Metadata.Data427
import InitECandidate.Proofs.BackendStages.Filtered427
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis427_eq : ffiLines Filtered427.lines = localFfis427 := by
  with_unfolding_all rfl
theorem ffiStep427 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis427) : LabToTarget.findFfiNames (Filtered427 :: rest) = suffixFfis427 := by
  rw [findFfiNames_section, localFfis427_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep427
end InitECandidate.Proofs.BackendStages.Metadata
