import InitECandidate.Proofs.CompilerComputation
import InitECandidate.Proofs.PanInstallationCore

open scoped InitECandidate.Proofs.CompilerComputation

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

namespace InitE
set_option maxRecDepth 10000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Backend.RiscVConfig
open Flapjack.Compiler.Backend.BackendProof
open Flapjack.Pancake.Proofs.PanToTarget
set_option maxRecDepth 10000 in
private theorem baseline_mmio_projection : baselineConfig.labConf.shmemExtra = baselineMmio := by decide_cbv

set_option maxRecDepth 10000 in
theorem baseline_pan_installed_metadata :
    panInstalled InitECandidate.nativeCode 3788 InitECandidate.bitmaps 0
      baselineConfig.labConf.ffiNames (heapRegs pancakeRiscVBackendConfig.stackConf.regNames)
      baselineMachineConfig baselineConfig.labConf.shmemExtra baselineInstalledState
      (wlabWlocExact ∘ sourceMemory) ordinaryDomain sharedDomain := by
  have hregs : heapRegs pancakeRiscVBackendConfig.stackConf.regNames = (11,13) := by
    unfold pancakeRiscVBackendConfig
    rw [riscvBackendConfig_eq_executable]
    decide_cbv
  exact panInstalled_metadata_congr _ _ _ _ _ (some baselineNames) _ (11,13)
    _ _ baselineMmio _ _ (wlabWlocExact ∘ sourceMemory) _ ordinaryDomain _ sharedDomain
    baseline_installation_metadata.1 hregs baseline_mmio_projection rfl rfl rfl baseline_pan_installed_core

/-- Every compiler installation premise is certified after the bootstrap. -/
theorem baseline_pan_installed (input : Guest.InputBlob) :
    panInstalled InitECandidate.nativeCode 3788 InitECandidate.bitmaps 0
      baselineConfig.labConf.ffiNames (heapRegs pancakeRiscVBackendConfig.stackConf.regNames)
      baselineMachineConfig baselineConfig.labConf.shmemExtra baselineInstalledState
      (wlabWlocExact ∘ (sourceInitialState input).memory)
      (sourceInitialState input).memaddrs (sourceInitialState input).shMemaddrs := by
  exact panInstalled_metadata_congr _ _ _ _ _ baselineConfig.labConf.ffiNames
    _ (heapRegs pancakeRiscVBackendConfig.stackConf.regNames) _ _ baselineConfig.labConf.shmemExtra
    _ _ (wlabWlocExact ∘ sourceMemory) _ ordinaryDomain _ sharedDomain
    rfl rfl rfl rfl (source_memory_domain input) rfl baseline_pan_installed_metadata

end InitE

#print axioms InitE.baseline_pan_installed
