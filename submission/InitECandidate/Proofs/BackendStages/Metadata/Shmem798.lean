import InitECandidate.Proofs.BackendStages.Metadata.Data798
import InitECandidate.Proofs.BackendStages.Padded798
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep798 : walkShmemLines Padded798.lines 840884 beforeFfis798 beforeShmem798 = (845700, afterFfis798, afterShmem798) := by
  kernel_rfl
theorem shmemStep798 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded798 :: rest) 840884 beforeFfis798 beforeShmem798 = LabToTarget.getShmemInfo rest 845700 afterFfis798 afterShmem798 := by
  rw [getShmemInfo_section, walkStep798]
theorem symbolLength798 : LabToTarget.secLength Padded798.lines 0 = 4816 := by
  kernel_rfl
#print axioms shmemStep798
#print axioms symbolLength798
end InitECandidate.Proofs.BackendStages.Metadata
