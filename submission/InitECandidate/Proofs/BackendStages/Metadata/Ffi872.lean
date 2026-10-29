import InitECandidate.Proofs.BackendStages.Metadata.Data872
import InitECandidate.Proofs.BackendStages.Filtered872
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis872_eq : ffiLines Filtered872.lines = localFfis872 := by
  with_unfolding_all rfl
theorem ffiStep872 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis872) : LabToTarget.findFfiNames (Filtered872 :: rest) = suffixFfis872 := by
  rw [findFfiNames_section, localFfis872_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep872
end InitECandidate.Proofs.BackendStages.Metadata
