import InitECandidate.Proofs.CompilerComputation
import InitECandidate.Proofs.LiteralFacts
import InitECandidate.Proofs.BaselineMetadata
import InitECandidate.Proofs.MachineWordMemory
import InitECandidate.Proofs.BootstrapMemory
import InitE.MachineInitialization
import InitECandidate.Proofs.ArtifactFacts

open scoped InitECandidate.Proofs.CompilerComputation

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

namespace InitE
open InitECandidate.Proofs
open Flapjack Flapjack.RiscV.L3
open Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.LabToTarget
open Flapjack.Misc

/-- Only ordinary dispatch addresses are removed. Native MMIO instructions
remain loaded program bytes and are intercepted through ffiEntryPcs. -/
def programDomain (a : BitVec 64) : Prop :=
  bootstrapDomain a

noncomputable def baselineMachineConfig : MachineConfig 64 riscv_state RiscVProjection :=
  challengeMachineConfig (BitVec.ofNat 64 nativePc) programDomain machineSharedDomain
    baselineNames 2 baselineMmio

/-- Explicit reduced integer RISC-V machine: machine privilege, identity
translation, no pending transfer and no exception. -/
def machineStateOfAsm (t : AsmState 64) : riscv_state :=
  { (default : riscv_state) with
    MEM8 := t.mem
    c_MCSR := fun _ => { (default : MachineCSR) with
      mstatus := { (default : mstatus) with MPRV := 3, VM := 0 }
      mcpuid := { (default : mcpuid) with ArchBase := 2 } }
    c_PC := fun _ => t.pc
    c_gpr := fun _ r => t.regs r.toNat
    c_NextFetch := fun _ => none
    exception := .NoException }

theorem machineStateOfAsm_mode (t : AsmState 64) :
    ((machineStateOfAsm t).c_MCSR (machineStateOfAsm t).procID).mstatus.MPRV = 3 ∧
    ((machineStateOfAsm t).c_MCSR (machineStateOfAsm t).procID).mstatus.VM = 0 :=
  ⟨rfl,rfl⟩

theorem machineStateOfAsm_ok (t : AsmState 64) (hpc : holAligned 2 t.pc = true) :
    riscvOk (machineStateOfAsm t) = true := by
  exact (riscvOk_iff _).mpr ⟨rfl,rfl,rfl,rfl,hpc⟩

theorem machineStateOfAsm_relation (t : AsmState 64) (hpc : holAligned 2 t.pc = true) :
    targetStateRel riscvTarget t (machineStateOfAsm t) := by
  refine ⟨machineStateOfAsm_ok t hpc, rfl, fun _ _ => rfl, ?_, ?_⟩
  · intro i hi
    have hilt : i < 32 := hi.1
    change t.regs (BitVec.ofNat 5 i).toNat = t.regs i
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hilt]
  · intro i hi
    have : i < 0 := hi
    omega

theorem baseline_ffi_boundary : mmioPcsMinIndex baselineNames = some 2 :=
  ffiNameBoundaryValid_sound _ _ baseline_finite_facts.1

theorem baseline_ffi_interference :
    ffiInterferOkHOL (BitVec.ofNat 64 nativePc) baselineMachineConfig :=
  challengeMachineConfig_ffiOk_checked _ _ _ _ _ _ baseline_ffi_boundary
    baseline_finite_facts.2.1

theorem baseline_cache_interference :
    ccacheInterferOkHOL (BitVec.ofNat 64 nativePc) baselineMachineConfig :=
  challengeMachineConfig_cacheOk _ _ _ _ _ _

theorem baseline_machine_isRiscv :
    Flapjack.Compiler.Backend.RiscVConfig.isRiscvMachineConfig baselineMachineConfig :=
  challengeMachineConfig_isRiscv _ _ _ _ _ _

theorem baseline_machine_noInterference :
    interferenceOk baselineMachineConfig.nextInterfer
      (baselineMachineConfig.target.proj programDomain) :=
  challengeMachineConfig_noInterference _ _ _ _ _ _

private theorem dispatch_not_program (i : Fin 4) : ¬ programDomain (dispatchAddress i.val) := by
  intro h
  exact h.2 i.val i.isLt (by simpa [dispatchAddress, ffiOffset, Nat.mul_comm, Nat.add_comm] using (rfl : dispatchAddress i.val = dispatchAddress i.val))

private theorem dispatch_not_shared (i : Fin 4) :
    ¬ machineSharedDomain (dispatchAddress i.val) := by
  have bounds : 0x80001000 ≤ (dispatchAddress i.val).toNat ∧
      (dispatchAddress i.val).toNat < 0x80002000 := by
    have h : ∀ j : Fin 4, 0x80001000 ≤ (dispatchAddress j.val).toNat ∧
        (dispatchAddress j.val).toNat < 0x80002000 := by decide
    exact h i
  simp only [machineSharedDomain, inputStart, inputEnd, inputSize, outputStart, outputEnd]
  omega

theorem baseline_start_pc : startPcOk baselineMachineConfig (BitVec.ofNat 64 nativePc) := by
  refine ⟨dispatch_not_program ⟨0,by decide⟩,
    dispatch_not_program ⟨1,by decide⟩,
    dispatch_not_shared ⟨0,by decide⟩,
    dispatch_not_shared ⟨1,by decide⟩, rfl, rfl, by decide,
    2, baseline_ffi_boundary, ?_, ?_, baseline_finite_facts.2.2.2.2⟩
  · intro index hi
    have heq : BitVec.ofNat 64 nativePc - BitVec.ofNat 64 ((3+index)*ffiOffset) =
        dispatchAddress (index+2) := by
      simp only [dispatchAddress]
      rw [show 3+index = 1+(index+2) by omega]
    refine ⟨?_, ?_, ?_, ?_, baseline_finite_facts.2.2.1 ⟨index,hi⟩⟩
    · rw [heq]; exact dispatch_not_program ⟨index+2,by omega⟩
    · rw [heq]; exact dispatch_not_shared ⟨index+2,by omega⟩
    · have h : ∀ j : Fin 2, dispatchAddress (j.val+2) ≠ dispatchAddress 0 := by decide
      simpa [heq, baselineMachineConfig, challengeMachineConfig, dispatchAddress] using h ⟨index,hi⟩
    · have h : ∀ j : Fin 2, dispatchAddress (j.val+2) ≠ dispatchAddress 1 := by decide
      simpa [heq, baselineMachineConfig, challengeMachineConfig, dispatchAddress] using h ⟨index,hi⟩
  · intro index hi
    have hlen : index < baselineEntryPcs.length := by
      rw [←baseline_finite_facts.2.2.2.2]; exact hi.1
    change dispatchAddress 0 ≠ holEl index baselineEntryPcs ∧ dispatchAddress 1 ≠ holEl index baselineEntryPcs
    rw [holEl_eq_getElem index baselineEntryPcs hlen]
    exact baseline_finite_facts.2.2.2.1 ⟨index,hlen⟩ hi.2

theorem baseline_literal_layout : InitECandidate.bootPrefix.length = 4208 ∧
    InitECandidate.nativeCode.length = 979140 ∧ InitECandidate.code.length = 1028080 :=
  ⟨LiteralFacts.bootPrefix_length, LiteralFacts.nativeCode_length, LiteralFacts.code_length⟩

private theorem literal_append_byte (leadingBytes bytes trailingBytes : List (BitVec 8))
    (i : Fin bytes.length) :
    ((leadingBytes ++ bytes ++ trailingBytes)[leadingBytes.length+i.val]?.getD 0) = bytes[i] := by
  rw [List.append_assoc]
  simp [List.getElem?_append, show ¬ leadingBytes.length+i.val < leadingBytes.length by omega,
    Nat.add_sub_cancel_left, i.isLt]

theorem baseline_native_loaded_byte (i : Fin InitECandidate.nativeCode.length) :
    installedMemory (BitVec.ofNat 64 nativePc + BitVec.ofNat 64 i.val) =
      InitECandidate.nativeCode[i] := by
  have hi : i.val < 979140 := by simpa only [baseline_literal_layout.2.1] using i.isLt
  have ha : (BitVec.ofNat 64 nativePc + BitVec.ofNat 64 i.val).toNat = nativePc+i.val := by
    simp only [BitVec.toNat_add, BitVec.toNat_ofNat]
    have hn : nativePc < 2^64 := by decide
    rw [Nat.mod_eq_of_lt hn, Nat.mod_eq_of_lt (by omega : i.val < 2^64),
      Nat.mod_eq_of_lt (by simp only [nativePc]; omega : nativePc+i.val < 2^64)]
  have hsource : ¬ (sourceBase ≤ nativePc+i.val ∧ nativePc+i.val < sourceBase+40) := by
    simp only [sourceBase, nativePc]; omega
  have hdata : ¬ (initDataRam ≤ nativePc+i.val ∧ nativePc+i.val < initDataRam+24) := by
    simp only [initDataRam, nativePc]; omega
  have hbitmap : ¬ (initDataRam+24 ≤ nativePc+i.val ∧ nativePc+i.val < initDataEnd) := by
    simp only [initDataRam, nativePc]; omega
  simp only [installedMemory, ha, if_neg hsource, if_neg hdata, if_neg hbitmap]
  unfold initialMemory
  rw [ha, if_pos (by simp only [initialPc,nativePc,baseline_literal_layout.2.2]; omega)]
  have hoffset : nativePc+i.val-initialPc = InitECandidate.bootPrefix.length+i.val := by
    simp only [nativePc,initialPc,baseline_literal_layout.1]; omega
  rw [hoffset]
  exact literal_append_byte _ _ _ i

theorem baseline_native_program_byte (i : Fin InitECandidate.nativeCode.length) :
    programDomain (BitVec.ofNat 64 nativePc + BitVec.ofNat 64 i.val) := by
  have hi : i.val < 979140 := by simpa only [baseline_literal_layout.2.1] using i.isLt
  have ha : (BitVec.ofNat 64 nativePc + BitVec.ofNat 64 i.val).toNat = nativePc+i.val := by
    simp only [BitVec.toNat_add, BitVec.toNat_ofNat]
    rw [Nat.mod_eq_of_lt (by decide : nativePc < 2^64),
      Nat.mod_eq_of_lt (by omega : i.val < 2^64),
      Nat.mod_eq_of_lt (by simp only [nativePc]; omega : nativePc+i.val < 2^64)]
  refine ⟨?_, ?_⟩
  · simp only [memoryDomain, machineSharedDomain]
    rw [ha]
    simp only [initialPc, nativePc,
      codeSizeLimit, inputStart,inputEnd,inputSize,outputStart,outputEnd]
    constructor
    · left; omega
    · omega
  · intro j hj heq
    have hlow : (dispatchAddress j).toNat < nativePc := by
      have hh : ∀ k : Fin 4, (dispatchAddress k.val).toNat < nativePc := by decide
      exact hh ⟨j,hj⟩
    have haddr := congrArg BitVec.toNat heq
    have hd : BitVec.ofNat 64 nativePc - BitVec.ofNat 64 (16*(j+1)) = dispatchAddress j := by
      simp [dispatchAddress,ffiOffset,Nat.add_comm,Nat.mul_comm]
    rw [hd,ha] at haddr
    omega

noncomputable def baselineInstalledState : riscv_state := machineStateOfAsm installedAsm

theorem baseline_native_codeLoaded :
    codeLoaded InitECandidate.nativeCode baselineMachineConfig baselineInstalledState := by
  apply readBytearray_literal
  intro i
  have hprog : baselineMachineConfig.progAddresses
      (baselineMachineConfig.target.getPc baselineInstalledState + BitVec.ofNat 64 i.val) :=
    baseline_native_program_byte i
  rw [if_pos hprog]
  exact congrArg some (baseline_native_loaded_byte i)

end InitE
