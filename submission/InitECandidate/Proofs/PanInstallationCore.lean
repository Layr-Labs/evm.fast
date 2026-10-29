import InitECandidate.Proofs.PanInstallationConstructor
import InitECandidate.Proofs.BaselineMemoryDomains
import InitECandidate.Proofs.BitmapSeparation
import InitECandidate.Proofs.SourceMemoryInstallation
import InitECandidate.Proofs.CompilerInstallationMetadata
import Flapjack.Pancake.Proofs.PanToTarget.PanInstalled

namespace InitE
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Backend.RiscVConfig
open Flapjack.Compiler.Backend.BackendProof
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.LabToTarget
open Flapjack.Pancake.Proofs.PanToTarget

private theorem baseline_dataDm_eq :
    (fun a => decide (installedAsm.regs 11 ≤ a ∧ a < installedAsm.regs 13) ||
      baselineBitmapDm a) = baselineDataDm := by
  funext a
  change (decide (BitVec.ofNat 64 sourceBase ≤ a ∧ a < BitVec.ofNat 64 ramEnd) ||
    baselineBitmapDm a) = _
  simp only [baselineDataDm,BitVec.le_def,BitVec.lt_def]
  rfl

private theorem align_sourceBase : holByteAligned (BitVec.ofNat 64 sourceBase) = true := by
  unfold holByteAligned
  rw [holLOG2_eq_log2 (by decide)]
  decide
private theorem align_ramEnd : holByteAligned (BitVec.ofNat 64 ramEnd) = true := by
  unfold holByteAligned
  rw [holLOG2_eq_log2 (by decide)]
  decide
private theorem align_bitmapPtr : holByteAligned (BitVec.ofNat 64 (initDataRam+24)) = true := by
  unfold holByteAligned
  rw [holLOG2_eq_log2 (by decide)]
  decide

private theorem baseline_good_init :
    goodInitState baselineMachineConfig baselineInstalledState InitECandidate.nativeCode 3788
      installedAsm (packedWordMemory installedMemory) baselineDataDm baselineSharedDm := by
  refine ⟨machineStateOfAsm_relation _ (by decide),⟨rfl,rfl,rfl,rfl,rfl⟩,rfl,
    baseline_start_pc,by decide,baseline_machine_noInterference,
    baseline_ffi_interference,baseline_cache_interference,baseline_native_codeLoaded,
    baseline_code_bytes,baseline_data_program,baseline_data_aligned_closed,
    baseline_shared_domain,baseline_shared_aligned_closed,baseline_program_shared_disjoint,
    packedWordMemory_certificate installedMemory,baseline_code_buffer,baseline_code_size_bound⟩

theorem baseline_pan_installed_core :
    panInstalled InitECandidate.nativeCode 3788 InitECandidate.bitmaps 0
      (some baselineNames) (11,13) baselineMachineConfig baselineMmio baselineInstalledState
      (wlabWlocExact ∘ sourceMemory) ordinaryDomain sharedDomain := by
  apply panInstalled_intro _ _ _ _ _ _ _ _ _ _ _ _ installedAsm
    (packedWordMemory installedMemory) (BitVec.ofNat 64 (initDataRam+24))
    baselineBitmapDm baselineSharedDm
  refine ⟨?_,?_,?_,align_sourceBase,align_ramEnd,align_bitmapPtr,
    by decide,by decide,?_,?_,?_,?_,?_,?_,?_,rfl,?_⟩
  · exact installed_ordinary_word
  · simpa only [baseline_dataDm_eq] using baseline_good_init
  · exact source_shared_domain baselineSharedDm (by intro a; simp [baselineSharedDm,machineSharedDomain])
  · exact baseline_heap_bitmap_disjoint
  · exact congrArg WordLocW.word (baseline_source_headers ⟨0,by decide⟩)
  · have h := congrArg WordLocW.word (baseline_source_headers ⟨1,by decide⟩)
    simp only [bitmap_count]
    change packedWordMemory installedMemory (BitVec.ofNat 64 (sourceBase+8*1)) =
      .word Guest.startupHeaders[1]
    exact h
  · have h := congrArg WordLocW.word (baseline_source_headers ⟨2,by decide⟩)
    simp only [bitmap_count]
    change packedWordMemory installedMemory (BitVec.ofNat 64 (sourceBase+8*2)) =
      .word Guest.startupHeaders[2]
    exact h
  · have h := congrArg WordLocW.word (baseline_source_headers ⟨3,by decide⟩)
    simp only [baseline_literal_layout.2.1]
    change packedWordMemory installedMemory (BitVec.ofNat 64 (sourceBase+8*3)) =
      .word Guest.startupHeaders[3]
    exact h
  · have h := congrArg WordLocW.word (baseline_source_headers ⟨4,by decide⟩)
    simp only [baseline_literal_layout.2.1]
    change packedWordMemory installedMemory (BitVec.ofNat 64 (sourceBase+8*4)) =
      .word Guest.startupHeaders[4]
    exact h
  · rw [baseline_bitmap_aligned_domain]
    exact baseline_bitmap_separation
  · intro i hi
    have heq : i = 2 := by
      change mmioPcsMinIndex baselineNames = some i at hi
      rw [baseline_ffi_boundary] at hi
      exact (Option.some.inj hi).symm
    subst i
    refine ⟨baseline_installation_metadata.2.1,?_,baseline_installation_metadata.2.2⟩
    change machineMmioInfo (BitVec.ofNat 64 nativePc) 2 baselineMmio =
      List.zip ((List.range baselineMmio.length).map (fun index => index+2))
        (baselineMmio.map fun rec => (rec.nbytes,
          Flapjack.Compiler.Encoders.Asm.HolAddr.addr rec.addrReg (BitVec.ofNat 64 rec.addrOff),
          rec.reg,BitVec.ofNat 64 rec.exitPc+BitVec.ofNat 64 nativePc))
    simp only [machineMmioInfo,BitVec.add_comm]

end InitE

#print axioms InitE.baseline_pan_installed_core
