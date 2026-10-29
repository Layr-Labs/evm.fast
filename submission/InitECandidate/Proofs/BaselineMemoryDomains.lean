import InitECandidate.Proofs.BaselineInstallationFacts
import InitECandidate.Proofs.BitmapImageFacts

namespace InitE
open Flapjack Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.LabToTarget
open Flapjack.Compiler.Backend.StackRemove

/-- Compiler data consists of accessible sourceRAM and copied bitmap bytes. -/
def baselineBitmapDm (a : BitVec 64) : Bool :=
  decide (initDataRam + 24 ≤ a.toNat ∧ a.toNat < initDataEnd)
def baselineDataDm (a : BitVec 64) : Bool :=
  decide (sourceBase ≤ a.toNat ∧ a.toNat < ramEnd) || baselineBitmapDm a
def baselineSharedDm (a : BitVec 64) : Bool :=
  decide ((inputStart ≤ a.toNat ∧ a.toNat < inputEnd) ∨
    (outputStart ≤ a.toNat ∧ a.toNat < outputEnd))

theorem baseline_shared_domain : (fun a => baselineSharedDm a = true) =
    baselineMachineConfig.sharedAddresses := by
  funext a
  simp [baselineSharedDm, baselineMachineConfig, challengeMachineConfig, machineSharedDomain]

theorem baseline_data_aligned_closed (a : BitVec 64)
    (h : baselineDataDm (holByteAlign a) = true) : baselineDataDm a = true := by
  simp only [baselineDataDm, baselineBitmapDm, Bool.or_eq_true, decide_eq_true_eq] at h ⊢
  rw [holByteAlign_toNat (Or.inr rfl)] at h
  norm_num [sourceBase, ramEnd, ramStart, ramSize, initDataRam, initDataEnd] at h ⊢
  have modBound := Nat.mod_lt a.toNat (by decide : 0 < 8)
  have division := Nat.div_add_mod a.toNat 8
  omega

theorem baseline_shared_aligned_closed (a : BitVec 64)
    (h : baselineSharedDm (holByteAlign a) = true) : baselineSharedDm a = true := by
  simp only [baselineSharedDm, decide_eq_true_eq] at h ⊢
  rw [holByteAlign_toNat (Or.inr rfl)] at h
  norm_num [inputStart, inputEnd, inputSize, outputStart, outputEnd, outputSize] at h ⊢
  have modBound := Nat.mod_lt a.toNat (by decide : 0 < 8)
  have division := Nat.div_add_mod a.toNat 8
  omega

private theorem native_dispatch_below (i : Nat) (hi : i < 4) :
    (BitVec.ofNat 64 nativePc - BitVec.ofNat 64 (16 * (i + 1))).toNat < nativePc := by
  have offNat : (BitVec.ofNat 64 (16 * (i + 1))).toNat = 16 * (i + 1) := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  have pcNat : (BitVec.ofNat 64 nativePc).toNat = nativePc := by decide
  have less : BitVec.ofNat 64 (16 * (i + 1)) ≤ BitVec.ofNat 64 nativePc := by
    apply BitVec.le_def.mpr
    rw [offNat, pcNat]
    norm_num [nativePc]
    omega
  rw [BitVec.toNat_sub_of_le less, pcNat, offNat]
  norm_num [nativePc]

theorem baseline_data_program (a : BitVec 64) (h : baselineDataDm a = true) :
    programDomain a := by
  simp only [baselineDataDm, baselineBitmapDm, Bool.or_eq_true, decide_eq_true_eq] at h
  constructor
  · unfold memoryDomain machineSharedDomain
    norm_num [initialPc, codeSizeLimit, ramStart, ramEnd, ramSize,
      inputStart, inputEnd, inputSize, outputStart, outputEnd, outputSize,
      sourceBase, initDataRam, initDataEnd] at h ⊢
    omega
  · intro i hi eq
    have low := native_dispatch_below i hi
    have value := congrArg BitVec.toNat eq
    have alow : a.toNat < nativePc := by rw [value]; exact low
    norm_num [sourceBase, ramEnd, ramStart, ramSize, initDataRam, initDataEnd, nativePc] at h alow
    omega

theorem baseline_program_shared_disjoint :
    Disjoint (α := Set (BitVec 64)) (Set.ofPred baselineMachineConfig.progAddresses)
      (Set.ofPred baselineMachineConfig.sharedAddresses) := by
  apply Set.disjoint_left.mpr
  intro a prog shared
  exact prog.1.2 shared

private theorem native_address_nat (offset : Nat) (bound : offset < 982928) :
    (BitVec.ofNat 64 nativePc + BitVec.ofNat 64 offset).toNat = nativePc + offset := by
  rw [← BitVec.ofNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt]
  norm_num [nativePc]
  omega

private theorem native_data_excluded (offset : Nat) (bound : offset < 982928) :
    baselineDataDm (BitVec.ofNat 64 nativePc + BitVec.ofNat 64 offset) ≠ true := by
  rw [baselineDataDm, baselineBitmapDm, native_address_nat offset bound]
  norm_num [sourceBase, ramEnd, ramStart, ramSize, initDataRam, initDataEnd, nativePc]
  omega

theorem baseline_code_bytes :
    bytesInMemHOL installedAsm.pc InitECandidate.nativeCode installedAsm.mem
      installedAsm.memDomain (fun a => baselineDataDm a = true) := by
  apply bytesInMem_literal
  intro i
  have bound : i.val < 982928 := by
    have hi : i.val < 979140 := by simpa only [baseline_literal_layout.2.1] using i.isLt
    omega
  exact ⟨baseline_native_program_byte i, native_data_excluded i.val bound,
    baseline_native_loaded_byte i⟩

theorem baseline_code_buffer (n : Nat) (hn : n < 3788) :
    installedAsm.memDomain (BitVec.ofNat 64 (n + InitECandidate.nativeCode.length) + installedAsm.pc) ∧
    baselineDataDm (BitVec.ofNat 64 (n + InitECandidate.nativeCode.length) + installedAsm.pc) ≠ true := by
  have count := baseline_literal_layout.2.1
  have offset : n + InitECandidate.nativeCode.length < 982928 := by rw [count]; omega
  have addr : BitVec.ofNat 64 (n + InitECandidate.nativeCode.length) + installedAsm.pc =
      BitVec.ofNat 64 nativePc + BitVec.ofNat 64 (n + InitECandidate.nativeCode.length) :=
    BitVec.add_comm _ _
  rw [addr]
  refine ⟨?_, native_data_excluded _ offset⟩
  constructor
  · unfold memoryDomain machineSharedDomain
    rw [native_address_nat _ offset]
    norm_num [initialPc, codeSizeLimit, ramStart, ramEnd, ramSize, nativePc,
      inputStart, inputEnd, inputSize, outputStart, outputEnd, outputSize]
    omega
  · intro i hi eq
    have low := native_dispatch_below i hi
    have value := congrArg BitVec.toNat eq
    rw [native_address_nat _ offset] at value
    omega

theorem baseline_code_size_bound : 3788 + InitECandidate.nativeCode.length < 2 ^ 64 := by
  rw [baseline_literal_layout.2.1]
  decide

private theorem bitmap_index_address (i : Nat) (hi : i < 4603) :
    (BitVec.ofNat 64 (initDataRam + 24) + BitVec.ofNat 64 i * (8 : BitVec 64)).toNat =
      0xa0020018 + 8 * i := by
  have sum : BitVec.ofNat 64 (initDataRam + 24) + BitVec.ofNat 64 i * (8 : BitVec 64) =
      BitVec.ofNat 64 (0xa0020018 + 8 * i) := by
    simp [initDataRam, BitVec.ofNat_add, BitVec.ofNat_mul, Nat.mul_comm]
  rw [sum, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]

/-- The compiler bitmap Boolean byte region yields precisely its4613aligned
word cells. This identifies its separation-logic domain with the logical
compiler's original `addresses` predicate. -/
theorem baseline_bitmap_aligned_domain :
    (fun a : BitVec 64 => holByteAligned a = true ∧ baselineBitmapDm a = true) =
      addresses (BitVec.ofNat 64 (initDataRam + 24)) InitECandidate.bitmaps.length := by
  funext a
  apply propext
  rw [mem_addresses, bitmap_count]
  have aligned : holByteAligned a = true ↔ a.toNat % 8 = 0 := by
    have log : holLOG2 (64 / 8) = 3 := by simp [holLOG2_eq_log2]
    simpa only [holByteAligned, log] using Flapjack.holAligned_iff 3 a
  rw [aligned]
  simp only [baselineBitmapDm, decide_eq_true_eq]
  norm_num [initDataRam, initDataEnd]
  constructor
  · rintro ⟨align, lower, upper⟩
    let i := (a.toNat - 0xa0020018) / 8
    have remainder : (a.toNat - 0xa0020018) % 8 = 0 := by omega
    have division := Nat.div_add_mod (a.toNat - 0xa0020018) 8
    have ibound : i < 4603 := by dsimp [i]; omega
    refine ⟨i, ibound, ?_⟩
    apply BitVec.eq_of_toNat_eq
    have addr := bitmap_index_address i ibound
    have addr' : (2684485656#64 + BitVec.ofNat 64 i * bytesInWord 64).toNat =
        0xa0020018 + 8 * i := by exact addr
    rw [addr']
    dsimp [i]
    omega
  · rintro ⟨i, hi, equality⟩
    have address := bitmap_index_address i hi
    have numeric : a.toNat = 0xa0020018 + 8 * i := by
      rw [equality]
      exact address
    rw [numeric]
    constructor
    · omega
    · omega

theorem baseline_heap_bitmap_disjoint (a : BitVec 64) :
    ¬ (decide (BitVec.ofNat 64 sourceBase ≤ a ∧ a < BitVec.ofNat 64 ramEnd) = true ∧
      baselineBitmapDm a = true) := by
  simp only [decide_eq_true_eq, BitVec.le_def, BitVec.lt_def, baselineBitmapDm]
  norm_num [sourceBase, ramEnd, ramStart, ramSize, initDataRam, initDataEnd]
  omega

end InitE
