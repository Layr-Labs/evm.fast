import InitECandidate.Proofs.BackendStages.Metadata.Data432
import InitECandidate.Proofs.BackendStages.Padded432
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep432 : walkShmemLines Padded432.lines 320936 beforeFfis432 beforeShmem432 = (321340, afterFfis432, afterShmem432) := by
  kernel_rfl
theorem shmemStep432 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded432 :: rest) 320936 beforeFfis432 beforeShmem432 = LabToTarget.getShmemInfo rest 321340 afterFfis432 afterShmem432 := by
  rw [getShmemInfo_section, walkStep432]
theorem symbolLength432 : LabToTarget.secLength Padded432.lines 0 = 404 := by
  kernel_rfl
#print axioms shmemStep432
#print axioms symbolLength432
end InitECandidate.Proofs.BackendStages.Metadata
