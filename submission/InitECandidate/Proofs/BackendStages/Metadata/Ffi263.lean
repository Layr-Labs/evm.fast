import InitECandidate.Proofs.BackendStages.Metadata.Data263
import InitECandidate.Proofs.BackendStages.Filtered263
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis263_eq : ffiLines Filtered263.lines = localFfis263 := by
  with_unfolding_all rfl
theorem ffiStep263 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis263) : LabToTarget.findFfiNames (Filtered263 :: rest) = suffixFfis263 := by
  rw [findFfiNames_section, localFfis263_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep263
end InitECandidate.Proofs.BackendStages.Metadata
