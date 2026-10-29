import InitECandidate.Proofs.CompilerComputation
import InitECandidate.Proofs.BaselineInstallationFacts
import InitECandidate.Proofs.BaselineCorrectness
import InitE.TargetTotality
import InitECandidate.Proofs.InstallationTransport

open scoped InitECandidate.Proofs.CompilerComputation

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

namespace InitE
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Backend.BackendProof
open Flapjack.Compiler.Backend.RiscVConfig Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.LabToTarget
open Flapjack.Pancake.Proofs.PanToTarget

set_option maxRecDepth 100000

/-- Heap-shaped domain size, including the globals reserved at its upper end. -/
def baselineHeapLen : Nat := (stackStart - sourceBase) / 8

def baselineAdj2 : BitVec 64 := BitVec.ofNat 64 sourceBase +
  (8 : BitVec 64) * BitVec.ofNat 64 StackRemove.maxStackAlloc

def baselineAdj4 : BitVec 64 := BitVec.ofNat 64 ramEnd -
  (8 : BitVec 64) * BitVec.ofNat 64 StackRemove.maxStackAlloc

/-- Remaining numeric and register premises are fixed baseline facts, rather
than requirements on inputs or assumptions supplied by a participant. -/
theorem baseline_installation (input : Guest.InputBlob)
    (memory : panInstalled InitECandidate.nativeCode 3788 InitECandidate.bitmaps 0
      baselineConfig.labConf.ffiNames (heapRegs pancakeRiscVBackendConfig.stackConf.regNames)
      baselineMachineConfig baselineConfig.labConf.shmemExtra baselineInstalledState
      (wlabWlocExact ∘ (sourceInitialState input).memory)
      (sourceInitialState input).memaddrs (sourceInitialState input).shMemaddrs) :
    BaselineInstallation input baselineOutput baselineMachineConfig baselineInstalledState
      InitECandidate.nativeCode InitECandidate.bitmaps baselineConfig baselineHeapLen
      baselineAdj2 baselineAdj4 3788 0 := by
  refine ⟨baseline_machine_isRiscv, baseline_artifact_complete,
    ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, memory, ?_⟩
  · change (0 : BitVec 64) < BitVec.ofNat 64 sourceBase
    decide_cbv
  · change BitVec.ofNat 64 sourceBase < BitVec.ofNat 64 stackStart
    decide_cbv
  · rfl
  · change baselineHeapLen = (BitVec.ofNat 64 stackStart +
      -1 * BitVec.ofNat 64 sourceBase).toNat / (64 / 8)
    decide_cbv
  · change BitVec.ofNat 64 heapEnd = BitVec.ofNat 64 sourceBase +
      (wordSemBytesInWord : BitVec 64) * BitVec.ofNat 64 baselineHeapLen -
        BitVec.ofNat 64 (globalsWords * 64 / 8)
    decide_cbv
  · decide_cbv
  · rfl
  · change holAligned (wordShiftAmount 64 + 1)
      (BitVec.ofNat 64 stackStart + -1 * BitVec.ofNat 64 sourceBase) = true
    decide_cbv
  · rfl
  · rfl
  · change baselineAdj2 ≤ BitVec.ofNat 64 stackStart
    decide_cbv
  · change BitVec.ofNat 64 stackStart ≤ baselineAdj4
    decide_cbv
  · change (BitVec.ofNat 64 stackStart + -1 * BitVec.ofNat 64 sourceBase).toNat ≤
      (wordSemBytesInWord : BitVec 64).toNat *
        (2 * DataToWord.maxHeapLimit 64 pancakeRiscVBackendConfig.dataConf - 1)
    decide_cbv
  · rfl
  · have names :
        (StackNames.findNameSpt pancakeRiscVBackendConfig.stackConf.regNames 2,
         StackNames.findNameSpt pancakeRiscVBackendConfig.stackConf.regNames 3,
         StackNames.findNameSpt pancakeRiscVBackendConfig.stackConf.regNames 4) =
          (11,12,13) := by decide_cbv
    have n2 := congrArg Prod.fst names
    have n3 := congrArg (fun p => p.2.1) names
    have n4 := congrArg (fun p => p.2.2) names
    dsimp only at n2 n3 n4
    simp only [readLimits, n2, n3, n4]
    rfl

/-- Compiler-derived behavior equality at the actual native entry. -/
theorem baseline_native_behaviour_eq (input : Guest.InputBlob)
    (installation : BaselineInstallation input baselineOutput baselineMachineConfig
      baselineInstalledState InitECandidate.nativeCode InitECandidate.bitmaps
      baselineConfig baselineHeapLen baselineAdj2 baselineAdj4 3788 0)
    (nonfail : sourceBehaviour input ≠ HolBehaviour.fail) :
    ∀ behaviour, machineSemHOL baselineMachineConfig (sourceFfi input)
      baselineInstalledState behaviour → behaviour = sourceBehaviour input :=
  baseline_behaviour_eq input baselineOutput baseline_ast_compilation
    baselineMachineConfig baselineInstalledState InitECandidate.nativeCode
    InitECandidate.bitmaps baselineConfig baselineHeapLen baselineAdj2 baselineAdj4
    3788 0 installation nonfail

/-- Installations are stable under the machine projection agreement established
by the bootstrap, including the precise compiler resource limits. -/
theorem baseline_installation_transport (input : Guest.InputBlob)
    (ms : RiscV.L3.riscv_state)
    (related : targetStateRel riscvTarget installedAsm ms)
    (installed : BaselineInstallation input baselineOutput baselineMachineConfig
      baselineInstalledState InitECandidate.nativeCode InitECandidate.bitmaps
      baselineConfig baselineHeapLen baselineAdj2 baselineAdj4 3788 0) :
    BaselineInstallation input baselineOutput baselineMachineConfig ms
      InitECandidate.nativeCode InitECandidate.bitmaps baselineConfig baselineHeapLen
      baselineAdj2 baselineAdj4 3788 0 := by
  have agreement := baseline_endpoint_agreement ms related
  have r11 := agreement.regs 11 (by decide)
  have r12 := agreement.regs 12 (by decide)
  have r13 := agreement.regs 13 (by decide)
  have names :
      (StackNames.findNameSpt pancakeRiscVBackendConfig.stackConf.regNames 2,
       StackNames.findNameSpt pancakeRiscVBackendConfig.stackConf.regNames 3,
       StackNames.findNameSpt pancakeRiscVBackendConfig.stackConf.regNames 4) =
        (11,12,13) := by decide_cbv
  have n2 := congrArg Prod.fst names
  have n3 := congrArg (fun p => p.2.1) names
  have n4 := congrArg (fun p => p.2.2) names
  dsimp only at n2 n3 n4
  have limits : readLimits baselineMachineConfig.target.config pancakeRiscVBackendConfig
      baselineMachineConfig ms = readLimits baselineMachineConfig.target.config
        pancakeRiscVBackendConfig baselineMachineConfig baselineInstalledState := by
    simp only [readLimits, n2, n3, n4, r11, r12, r13]
  have rlen : baselineMachineConfig.target.getReg ms baselineMachineConfig.lenReg =
      baselineMachineConfig.target.getReg baselineInstalledState baselineMachineConfig.lenReg := r11
  have rptr : baselineMachineConfig.target.getReg ms baselineMachineConfig.ptr2Reg =
      baselineMachineConfig.target.getReg baselineInstalledState baselineMachineConfig.ptr2Reg := r12
  have rlen2 : baselineMachineConfig.target.getReg ms baselineMachineConfig.len2Reg =
      baselineMachineConfig.target.getReg baselineInstalledState baselineMachineConfig.len2Reg := r13
  rcases installed with ⟨hmc, hart, hpositive, hsplit, hbase, hlen, htop, hglobals,
    hdomain, haligned, hadj2, hadj4, hleft, hright, hmax, hendian, hmemory, hlimits⟩
  have memory := panInstalled_transport agreement hmemory
  unfold BaselineInstallation
  simp only [rlen, rptr, rlen2, limits]
  exact ⟨hmc, hart, hpositive, hsplit, hbase, hlen, htop, hglobals, hdomain,
    haligned, hadj2, hadj4, hleft, hright, hmax, hendian, memory, hlimits⟩

/-- Compiler correctness at whichever concrete machine startup reaches. -/
theorem baseline_endpoint_behaviour_eq (input : Guest.InputBlob)
    (ms : RiscV.L3.riscv_state)
    (related : targetStateRel riscvTarget installedAsm ms)
    (installed : BaselineInstallation input baselineOutput baselineMachineConfig
      baselineInstalledState InitECandidate.nativeCode InitECandidate.bitmaps
      baselineConfig baselineHeapLen baselineAdj2 baselineAdj4 3788 0)
    (nonfail : sourceBehaviour input ≠ HolBehaviour.fail) :
    ∀ behaviour, machineSemHOL baselineMachineConfig (sourceFfi input) ms behaviour →
      behaviour = sourceBehaviour input :=
  baseline_behaviour_eq input baselineOutput baseline_ast_compilation
    baselineMachineConfig ms InitECandidate.nativeCode InitECandidate.bitmaps
    baselineConfig baselineHeapLen baselineAdj2 baselineAdj4 3788 0
    (baseline_installation_transport input ms related installed) nonfail

/-- Source termination yields a finite target Halt witness with the same full
observable behavior, despite the literal infinite score. -/
theorem baseline_endpoint_terminates (input : Guest.InputBlob)
    (ms : RiscV.L3.riscv_state)
    (related : targetStateRel riscvTarget installedAsm ms)
    (installed : BaselineInstallation input baselineOutput baselineMachineConfig
      baselineInstalledState InitECandidate.nativeCode InitECandidate.bitmaps
      baselineConfig baselineHeapLen baselineAdj2 baselineAdj4 3788 0)
    (outcome : HolOutcome) (events : List HolIoEvent)
    (source : sourceBehaviour input = .terminate outcome events) :
    machineSemHOL baselineMachineConfig (sourceFfi input) ms (.terminate outcome events) ∧
      targetTerminatesWithin .infinity baselineMachineConfig (sourceFfi input) ms := by
  have nonfail : sourceBehaviour input ≠ HolBehaviour.fail := by
    rw [source]
    intro impossible
    cases impossible
  have correct := baseline_endpoint_behaviour_eq input ms related installed nonfail
  have termination := target_termination_of_behaviour_eq baselineMachineConfig
    (sourceFfi input) ms outcome events (fun b hb => (correct b hb).trans source)
  exact ⟨termination, (target_termination_iff_infinity _ _ _).mp
    ⟨outcome, events, termination⟩⟩

end InitE
