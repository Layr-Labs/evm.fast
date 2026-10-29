import InitECandidate.Proofs.BackendStages.Metadata.Ffi368
import InitECandidate.Proofs.BackendStages.Metadata.Shmem368
import InitECandidate.Proofs.BackendStages.Metadata.Ffi369
import InitECandidate.Proofs.BackendStages.Metadata.Shmem369
import InitECandidate.Proofs.BackendStages.Metadata.Ffi370
import InitECandidate.Proofs.BackendStages.Metadata.Shmem370
import InitECandidate.Proofs.BackendStages.Metadata.Ffi371
import InitECandidate.Proofs.BackendStages.Metadata.Shmem371
import InitECandidate.Proofs.BackendStages.Metadata.Ffi372
import InitECandidate.Proofs.BackendStages.Metadata.Shmem372
import InitECandidate.Proofs.BackendStages.Metadata.Ffi373
import InitECandidate.Proofs.BackendStages.Metadata.Shmem373
import InitECandidate.Proofs.BackendStages.Metadata.Ffi374
import InitECandidate.Proofs.BackendStages.Metadata.Shmem374
import InitECandidate.Proofs.BackendStages.Metadata.Ffi375
import InitECandidate.Proofs.BackendStages.Metadata.Shmem375
import InitECandidate.Proofs.BackendStages.Metadata.Ffi376
import InitECandidate.Proofs.BackendStages.Metadata.Shmem376
import InitECandidate.Proofs.BackendStages.Metadata.Ffi377
import InitECandidate.Proofs.BackendStages.Metadata.Shmem377
import InitECandidate.Proofs.BackendStages.Metadata.Ffi378
import InitECandidate.Proofs.BackendStages.Metadata.Shmem378
import InitECandidate.Proofs.BackendStages.Metadata.Ffi379
import InitECandidate.Proofs.BackendStages.Metadata.Shmem379
import InitECandidate.Proofs.BackendStages.Metadata.Ffi380
import InitECandidate.Proofs.BackendStages.Metadata.Shmem380
import InitECandidate.Proofs.BackendStages.Metadata.Ffi381
import InitECandidate.Proofs.BackendStages.Metadata.Shmem381
import InitECandidate.Proofs.BackendStages.Metadata.Ffi382
import InitECandidate.Proofs.BackendStages.Metadata.Shmem382
import InitECandidate.Proofs.BackendStages.Metadata.Ffi383
import InitECandidate.Proofs.BackendStages.Metadata.Shmem383
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk368_383 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis383) : LabToTarget.findFfiNames ([Filtered368, Filtered369, Filtered370, Filtered371, Filtered372, Filtered373, Filtered374, Filtered375, Filtered376, Filtered377, Filtered378, Filtered379, Filtered380, Filtered381, Filtered382, Filtered383] ++ rest) = suffixFfis368 := by
  exact ffiStep368 _ ( ffiStep369 _ ( ffiStep370 _ ( ffiStep371 _ ( ffiStep372 _ ( ffiStep373 _ ( ffiStep374 _ ( ffiStep375 _ ( ffiStep376 _ ( ffiStep377 _ ( ffiStep378 _ ( ffiStep379 _ ( ffiStep380 _ ( ffiStep381 _ ( ffiStep382 _ ( ffiStep383 _ (h))))))))))))))))
theorem shmemChunk368_383 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded368, Padded369, Padded370, Padded371, Padded372, Padded373, Padded374, Padded375, Padded376, Padded377, Padded378, Padded379, Padded380, Padded381, Padded382, Padded383] ++ rest) 286424 beforeFfis368 beforeShmem368 = LabToTarget.getShmemInfo rest 294128 afterFfis383 afterShmem383 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 286424 beforeFfis368 beforeShmem368 = _
  rw [shmemStep368]
  change LabToTarget.getShmemInfo _ 286436 beforeFfis369 beforeShmem369 = _
  rw [shmemStep369]
  change LabToTarget.getShmemInfo _ 286592 beforeFfis370 beforeShmem370 = _
  rw [shmemStep370]
  change LabToTarget.getShmemInfo _ 287128 beforeFfis371 beforeShmem371 = _
  rw [shmemStep371]
  change LabToTarget.getShmemInfo _ 287144 beforeFfis372 beforeShmem372 = _
  rw [shmemStep372]
  change LabToTarget.getShmemInfo _ 287160 beforeFfis373 beforeShmem373 = _
  rw [shmemStep373]
  change LabToTarget.getShmemInfo _ 287176 beforeFfis374 beforeShmem374 = _
  rw [shmemStep374]
  change LabToTarget.getShmemInfo _ 287192 beforeFfis375 beforeShmem375 = _
  rw [shmemStep375]
  change LabToTarget.getShmemInfo _ 287208 beforeFfis376 beforeShmem376 = _
  rw [shmemStep376]
  change LabToTarget.getShmemInfo _ 287224 beforeFfis377 beforeShmem377 = _
  rw [shmemStep377]
  change LabToTarget.getShmemInfo _ 287968 beforeFfis378 beforeShmem378 = _
  rw [shmemStep378]
  change LabToTarget.getShmemInfo _ 291256 beforeFfis379 beforeShmem379 = _
  rw [shmemStep379]
  change LabToTarget.getShmemInfo _ 291984 beforeFfis380 beforeShmem380 = _
  rw [shmemStep380]
  change LabToTarget.getShmemInfo _ 292624 beforeFfis381 beforeShmem381 = _
  rw [shmemStep381]
  change LabToTarget.getShmemInfo _ 293376 beforeFfis382 beforeShmem382 = _
  rw [shmemStep382]
  change LabToTarget.getShmemInfo _ 294060 beforeFfis383 beforeShmem383 = _
  rw [shmemStep383]
theorem symbolsChunk368_383 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 286424 ([Padded368, Padded369, Padded370, Padded371, Padded372, Padded373, Padded374, Padded375, Padded376, Padded377, Padded378, Padded379, Padded380, Padded381, Padded382, Padded383] ++ rest) = [(368, 286424, 12), (369, 286436, 156), (370, 286592, 536), (371, 287128, 16), (372, 287144, 16), (373, 287160, 16), (374, 287176, 16), (375, 287192, 16), (376, 287208, 16), (377, 287224, 744), (378, 287968, 3288), (379, 291256, 728), (380, 291984, 640), (381, 292624, 752), (382, 293376, 684), (383, 294060, 68)] ++ LabToTarget.getSymbols 294128 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength368, symbolLength369, symbolLength370, symbolLength371, symbolLength372, symbolLength373, symbolLength374, symbolLength375, symbolLength376, symbolLength377, symbolLength378, symbolLength379, symbolLength380, symbolLength381, symbolLength382, symbolLength383]
  rfl
#print axioms ffiChunk368_383
#print axioms shmemChunk368_383
#print axioms symbolsChunk368_383
end InitECandidate.Proofs.BackendStages.Metadata
