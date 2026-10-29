import InitECandidate.Proofs.BackendStages.Metadata.Data737
import InitECandidate.Proofs.BackendStages.Padded737
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep737 : walkShmemLines Padded737.lines 736028 beforeFfis737 beforeShmem737 = (736036, afterFfis737, afterShmem737) := by
  kernel_rfl
theorem shmemStep737 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded737 :: rest) 736028 beforeFfis737 beforeShmem737 = LabToTarget.getShmemInfo rest 736036 afterFfis737 afterShmem737 := by
  rw [getShmemInfo_section, walkStep737]
theorem symbolLength737 : LabToTarget.secLength Padded737.lines 0 = 8 := by
  kernel_rfl
#print axioms shmemStep737
#print axioms symbolLength737
end InitECandidate.Proofs.BackendStages.Metadata
