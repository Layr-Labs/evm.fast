import InitECandidate.Proofs.BackendStages.Metadata.Ffi64
import InitECandidate.Proofs.BackendStages.Metadata.Shmem64
import InitECandidate.Proofs.BackendStages.Metadata.Ffi65
import InitECandidate.Proofs.BackendStages.Metadata.Shmem65
import InitECandidate.Proofs.BackendStages.Metadata.Ffi66
import InitECandidate.Proofs.BackendStages.Metadata.Shmem66
import InitECandidate.Proofs.BackendStages.Metadata.Ffi67
import InitECandidate.Proofs.BackendStages.Metadata.Shmem67
import InitECandidate.Proofs.BackendStages.Metadata.Ffi68
import InitECandidate.Proofs.BackendStages.Metadata.Shmem68
import InitECandidate.Proofs.BackendStages.Metadata.Ffi69
import InitECandidate.Proofs.BackendStages.Metadata.Shmem69
import InitECandidate.Proofs.BackendStages.Metadata.Ffi70
import InitECandidate.Proofs.BackendStages.Metadata.Shmem70
import InitECandidate.Proofs.BackendStages.Metadata.Ffi71
import InitECandidate.Proofs.BackendStages.Metadata.Shmem71
import InitECandidate.Proofs.BackendStages.Metadata.Ffi72
import InitECandidate.Proofs.BackendStages.Metadata.Shmem72
import InitECandidate.Proofs.BackendStages.Metadata.Ffi73
import InitECandidate.Proofs.BackendStages.Metadata.Shmem73
import InitECandidate.Proofs.BackendStages.Metadata.Ffi74
import InitECandidate.Proofs.BackendStages.Metadata.Shmem74
import InitECandidate.Proofs.BackendStages.Metadata.Ffi75
import InitECandidate.Proofs.BackendStages.Metadata.Shmem75
import InitECandidate.Proofs.BackendStages.Metadata.Ffi76
import InitECandidate.Proofs.BackendStages.Metadata.Shmem76
import InitECandidate.Proofs.BackendStages.Metadata.Ffi77
import InitECandidate.Proofs.BackendStages.Metadata.Shmem77
import InitECandidate.Proofs.BackendStages.Metadata.Ffi78
import InitECandidate.Proofs.BackendStages.Metadata.Shmem78
import InitECandidate.Proofs.BackendStages.Metadata.Ffi79
import InitECandidate.Proofs.BackendStages.Metadata.Shmem79
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk64_79 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis79) : LabToTarget.findFfiNames ([Filtered64, Filtered65, Filtered66, Filtered67, Filtered68, Filtered69, Filtered70, Filtered71, Filtered72, Filtered73, Filtered74, Filtered75, Filtered76, Filtered77, Filtered78, Filtered79] ++ rest) = suffixFfis64 := by
  exact ffiStep64 _ ( ffiStep65 _ ( ffiStep66 _ ( ffiStep67 _ ( ffiStep68 _ ( ffiStep69 _ ( ffiStep70 _ ( ffiStep71 _ ( ffiStep72 _ ( ffiStep73 _ ( ffiStep74 _ ( ffiStep75 _ ( ffiStep76 _ ( ffiStep77 _ ( ffiStep78 _ ( ffiStep79 _ (h))))))))))))))))
theorem shmemChunk64_79 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded64, Padded65, Padded66, Padded67, Padded68, Padded69, Padded70, Padded71, Padded72, Padded73, Padded74, Padded75, Padded76, Padded77, Padded78, Padded79] ++ rest) 1000 beforeFfis64 beforeShmem64 = LabToTarget.getShmemInfo rest 7976 afterFfis79 afterShmem79 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 1000 beforeFfis64 beforeShmem64 = _
  rw [shmemStep64]
  change LabToTarget.getShmemInfo _ 1820 beforeFfis65 beforeShmem65 = _
  rw [shmemStep65]
  change LabToTarget.getShmemInfo _ 4700 beforeFfis66 beforeShmem66 = _
  rw [shmemStep66]
  change LabToTarget.getShmemInfo _ 4872 beforeFfis67 beforeShmem67 = _
  rw [shmemStep67]
  change LabToTarget.getShmemInfo _ 4968 beforeFfis68 beforeShmem68 = _
  rw [shmemStep68]
  change LabToTarget.getShmemInfo _ 5392 beforeFfis69 beforeShmem69 = _
  rw [shmemStep69]
  change LabToTarget.getShmemInfo _ 5412 beforeFfis70 beforeShmem70 = _
  rw [shmemStep70]
  change LabToTarget.getShmemInfo _ 5440 beforeFfis71 beforeShmem71 = _
  rw [shmemStep71]
  change LabToTarget.getShmemInfo _ 5836 beforeFfis72 beforeShmem72 = _
  rw [shmemStep72]
  change LabToTarget.getShmemInfo _ 5856 beforeFfis73 beforeShmem73 = _
  rw [shmemStep73]
  change LabToTarget.getShmemInfo _ 5884 beforeFfis74 beforeShmem74 = _
  rw [shmemStep74]
  change LabToTarget.getShmemInfo _ 6264 beforeFfis75 beforeShmem75 = _
  rw [shmemStep75]
  change LabToTarget.getShmemInfo _ 6284 beforeFfis76 beforeShmem76 = _
  rw [shmemStep76]
  change LabToTarget.getShmemInfo _ 6312 beforeFfis77 beforeShmem77 = _
  rw [shmemStep77]
  change LabToTarget.getShmemInfo _ 6648 beforeFfis78 beforeShmem78 = _
  rw [shmemStep78]
  change LabToTarget.getShmemInfo _ 6936 beforeFfis79 beforeShmem79 = _
  rw [shmemStep79]
theorem symbolsChunk64_79 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 1000 ([Padded64, Padded65, Padded66, Padded67, Padded68, Padded69, Padded70, Padded71, Padded72, Padded73, Padded74, Padded75, Padded76, Padded77, Padded78, Padded79] ++ rest) = [(64, 1000, 820), (65, 1820, 2880), (66, 4700, 172), (67, 4872, 96), (68, 4968, 424), (69, 5392, 20), (70, 5412, 28), (71, 5440, 396), (72, 5836, 20), (73, 5856, 28), (74, 5884, 380), (75, 6264, 20), (76, 6284, 28), (77, 6312, 336), (78, 6648, 288), (79, 6936, 1040)] ++ LabToTarget.getSymbols 7976 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength64, symbolLength65, symbolLength66, symbolLength67, symbolLength68, symbolLength69, symbolLength70, symbolLength71, symbolLength72, symbolLength73, symbolLength74, symbolLength75, symbolLength76, symbolLength77, symbolLength78, symbolLength79]
  rfl
#print axioms ffiChunk64_79
#print axioms shmemChunk64_79
#print axioms symbolsChunk64_79
end InitECandidate.Proofs.BackendStages.Metadata
