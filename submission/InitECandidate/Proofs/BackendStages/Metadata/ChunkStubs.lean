import InitECandidate.Proofs.BackendStages.Metadata.Ffi0
import InitECandidate.Proofs.BackendStages.Metadata.Shmem0
import InitECandidate.Proofs.BackendStages.Metadata.Ffi1
import InitECandidate.Proofs.BackendStages.Metadata.Shmem1
import InitECandidate.Proofs.BackendStages.Metadata.Ffi2
import InitECandidate.Proofs.BackendStages.Metadata.Shmem2
import InitECandidate.Proofs.BackendStages.Metadata.Ffi4
import InitECandidate.Proofs.BackendStages.Metadata.Shmem4
import InitECandidate.Proofs.BackendStages.Metadata.Ffi5
import InitECandidate.Proofs.BackendStages.Metadata.Shmem5
import InitECandidate.Proofs.BackendStages.Metadata.Ffi6
import InitECandidate.Proofs.BackendStages.Metadata.Shmem6
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunkStubs (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis6) : LabToTarget.findFfiNames ([Filtered0, Filtered1, Filtered2, Filtered4, Filtered5, Filtered6] ++ rest) = suffixFfis0 := by
  exact ffiStep0 _ ( ffiStep1 _ ( ffiStep2 _ ( ffiStep4 _ ( ffiStep5 _ ( ffiStep6 _ (h))))))
theorem shmemChunkStubs (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded0, Padded1, Padded2, Padded4, Padded5, Padded6] ++ rest) 0 beforeFfis0 beforeShmem0 = LabToTarget.getShmemInfo rest 1000 afterFfis6 afterShmem6 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 0 beforeFfis0 beforeShmem0 = _
  rw [shmemStep0]
  change LabToTarget.getShmemInfo _ 756 beforeFfis1 beforeShmem1 = _
  rw [shmemStep1]
  change LabToTarget.getShmemInfo _ 764 beforeFfis2 beforeShmem2 = _
  rw [shmemStep2]
  change LabToTarget.getShmemInfo _ 772 beforeFfis4 beforeShmem4 = _
  rw [shmemStep4]
  change LabToTarget.getShmemInfo _ 812 beforeFfis5 beforeShmem5 = _
  rw [shmemStep5]
  change LabToTarget.getShmemInfo _ 848 beforeFfis6 beforeShmem6 = _
  rw [shmemStep6]
theorem symbolsChunkStubs (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 0 ([Padded0, Padded1, Padded2, Padded4, Padded5, Padded6] ++ rest) = [(0, 0, 756), (1, 756, 8), (2, 764, 8), (4, 772, 40), (5, 812, 36), (6, 848, 152)] ++ LabToTarget.getSymbols 1000 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength0, symbolLength1, symbolLength2, symbolLength4, symbolLength5, symbolLength6]
  rfl
#print axioms ffiChunkStubs
#print axioms shmemChunkStubs
#print axioms symbolsChunkStubs
end InitECandidate.Proofs.BackendStages.Metadata
