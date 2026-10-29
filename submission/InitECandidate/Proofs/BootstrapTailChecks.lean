import InitECandidate.Proofs.BootstrapStraightLine
import InitECandidate.Proofs.BootstrapTailMemory
import InitECandidate.Proofs.BootstrapCopyGuards

set_option maxRecDepth 32768
set_option linter.unusedSimpArgs false
set_option autoImplicit false

namespace InitECandidate.Proofs.BootstrapStraightLine
open InitE
open Flapjack Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.AsmSem
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.LabToTarget
open Flapjack.Compiler.Backend.Semantics.TargetProps
open Flapjack.RiscV.TargetProof
open InitECandidate.Proofs.BootstrapSteps InitECandidate.Proofs.BootstrapCopy InitECandidate.Proofs.BootstrapCopyGuards
open InitECandidate.Proofs.BootstrapAsmComposition

private theorem input_pc : (copyState 4606).pc = 0x8000002c := by
  simpa only [show ¬ (4606 < 4606) by omega, if_false] using copyState_pc 4606 (Nat.le_refl _)

/-- All bytes written by the tail lie in available RAM. -/
theorem tail_store_domain (base : Nat)
    (region : (initDataRam ≤ base ∧ base+8 ≤ initDataRam+24) ∨
      (sourceBase ≤ base ∧ base+8 ≤ sourceBase+40)) (j : Nat) (hj : j < 8) :
    bootstrapDomain (BitVec.ofNat 64 base + BitVec.ofNat 64 j) := by
  have numbers : (BitVec.ofNat 64 base + BitVec.ofNat 64 j).toNat = base+j := by
    rw [← BitVec.ofNat_add, BitVec.toNat_ofNat]
    apply Nat.mod_eq_of_lt
    simp only [initDataRam, sourceBase] at region
    omega
  constructor
  · constructor
    · right
      simp only [numbers, ramStart, ramEnd, ramSize, initDataRam, sourceBase] at region ⊢
      omega
    · unfold machineSharedDomain
      simp only [numbers, inputStart, inputEnd, inputSize, outputSize, outputStart,
        outputEnd, initDataRam, sourceBase] at region ⊢
      omega
  · intro i hi equal
    have rightNat : (BitVec.ofNat 64 nativePc - BitVec.ofNat 64 (16*(i+1))).toNat < initDataRam := by
      rw [BitVec.toNat_sub_of_le (by
        change (BitVec.ofNat 64 (16*(i+1))).toNat ≤ (BitVec.ofNat 64 nativePc).toNat
        simp only [BitVec.toNat_ofNat, nativePc, Nat.mod_eq_of_lt (by omega : 16*(i+1) < 2^64)]
        omega), BitVec.toNat_ofNat, BitVec.toNat_ofNat,
        Nat.mod_eq_of_lt (by norm_num [nativePc]), Nat.mod_eq_of_lt (by omega : 16*(i+1) < 2^64)]
      norm_num [nativePc, initDataRam]; omega
    have same := congrArg BitVec.toNat equal
    rw [numbers] at same
    simp only [initDataRam, sourceBase] at region rightNat
    omega

private theorem asm_store_failed {w : Nat} [NeZero w] (s : AsmState w)
    (r b : Nat) (off next : BitVec w) :
    (asmUpd (.inst (.mem .store r (.addr b off))) next s).failed =
      (memStore (w/8) r (.addr b off) s).failed := rfl

private theorem after_store_failed (s : AsmState 64) (r b : Nat) (off : BitVec 64) :
    (after s (.inst (.mem .store r (.addr b off)))).failed =
      (memStore 8 r (.addr b off) s).failed := asm_store_failed s r b off _

private theorem store_success (s : AsmState 64) (r b : Nat) (off : BitVec 64)
    (little : s.be = false) (failed : s.failed = false)
    (domain : s.memDomain = bootstrapDomain) (base : Nat)
    (address : s.regs b + off = BitVec.ofNat 64 base)
    (region : (initDataRam ≤ base ∧ base+8 ≤ initDataRam+24) ∨
      (sourceBase ≤ base ∧ base+8 ≤ sourceBase+40))
    (aligned : holAligned 3 (BitVec.ofNat 64 base) = true) :
    (after s (.inst (.mem .store r (.addr b off)))).failed = false := by
  rw [after_store_failed]
  apply (source_memstore_success 8 r (.addr b off) s).mpr
  simp only [little, Bool.false_eq_true, reduceIte, addrHOL, readReg,
    address, domain, source_memory_domain_little,
    show holLOG2 8 = 3 by simp [holLOG2_eq_log2]]
  exact ⟨failed, tail_store_domain base region, aligned⟩

private theorem store_frame (s : AsmState 64) (r b : Nat) (off : BitVec 64)
    (little : s.be = false) (base : Nat)
    (address : s.regs b + off = BitVec.ofNat 64 base)
    (region : (initDataRam ≤ base ∧ base+8 ≤ initDataRam+24) ∨
      (sourceBase ≤ base ∧ base+8 ≤ sourceBase+40))
    (x : BitVec 64) (lo : initialPc ≤ x.toNat) (hi : x.toNat < initialPc+208) :
    (after s (.inst (.mem .store r (.addr b off)))).mem x = s.mem x := by
  rw [after_store_mem, little, if_neg Bool.false_ne_true, address]
  apply wmwMem_other
  intro j hj equal
  have numbers := congrArg BitVec.toNat equal
  simp only [stepAddr, Bool.false_eq_true, reduceIte, BitVec.toNat_add, BitVec.toNat_ofNat] at numbers
  rw [Nat.mod_eq_of_lt (by simp only [initDataRam,sourceBase] at region; omega : base < 2^64),
    Nat.mod_eq_of_lt (by omega : j < 2^64),
    Nat.mod_eq_of_lt (by simp only [initDataRam,sourceBase] at region; omega : base+j < 2^64)] at numbers
  simp only [initialPc,initDataRam,sourceBase] at lo hi region
  omega

private theorem after_loc_failed (s : AsmState 64) (r : Nat) (off : BitVec 64) :
    (after s (.loc r off)).failed = s.failed := rfl
private theorem after_const_failed (s : AsmState 64) (r : Nat) (v : BitVec 64) :
    (after s (.inst (.const r v))).failed = s.failed := rfl
private theorem after_shift_failed (s : AsmState 64) (r : Nat) (v : BitVec 64) :
    (after s (.inst (.arith (.shift .lsl r r (.imm v))))).failed = s.failed := rfl
private theorem after_jump_failed (s : AsmState 64) (v : BitVec 64) :
    (after s (.jump v)).failed = s.failed := rfl

private theorem tailState0_eq (s : AsmState 64) : tailState0 s = s := rfl

private theorem tailState0_success : (tailState0 (copyState 4606)).failed = false :=
  (congrArg AsmState.failed (tailState0_eq (copyState 4606))).trans
    (copyState_success 4606 (Nat.le_refl _))

private theorem tailState0_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState0 (copyState 4606)).mem x = initialMemory x := by
  have prior : (copyState 4606).mem x = initialMemory x := by
    apply copyState_frame 4606 (Nat.le_refl _) x
    intro word hw byte hb eq
    have numbers := congrArg BitVec.toNat eq
    rw [wordAddress_toNat _ _ _ (by simp; omega)] at numbers
    rw [show (0xa0020000 : BitVec 64).toNat = 0xa0020000 by decide] at numbers
    norm_num [initialPc] at lo hi numbers
    omega

  exact (congrArg (fun t : AsmState 64 => t.mem x) (tailState0_eq (copyState 4606))).trans prior

private theorem tailState1_success : (tailState1 (copyState 4606)).failed = false :=
  (after_loc_failed (tailState0 (copyState 4606)) _ _).trans tailState0_success

private theorem tailState1_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState1 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_loc_mem (tailState0 (copyState 4606)) _ _) x).trans (tailState0_frame x lo hi)

private theorem tailState2_success : (tailState2 (copyState 4606)).failed = false :=
  (after_const_failed (tailState1 (copyState 4606)) _ _).trans tailState1_success

private theorem tailState2_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState2 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_const_mem (tailState1 (copyState 4606)) _ _) x).trans (tailState1_frame x lo hi)

private theorem tailState3_success : (tailState3 (copyState 4606)).failed = false :=
  (after_shift_failed (tailState2 (copyState 4606)) _ _).trans tailState2_success

private theorem tailState3_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState3 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_shift_mem (tailState2 (copyState 4606)) _ _) x).trans (tailState2_frame x lo hi)

private theorem tailState4_success : (tailState4 (copyState 4606)).failed = false :=
  store_success (tailState3 (copyState 4606)) 6 5 0 ((tailState3_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1) tailState3_success ((tailState3_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) 2684485632 (by rw [(tailState3_control (copyState 4606) input_pc).2.1]; decide) (by decide) (by decide)

private theorem tailState4_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState4 (copyState 4606)).mem x = initialMemory x :=
  (store_frame (tailState3 (copyState 4606)) 6 5 0 ((tailState3_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1) 2684485632 (by rw [(tailState3_control (copyState 4606) input_pc).2.1]; decide) (by decide) x lo hi).trans (tailState3_frame x lo hi)

private theorem tailState5_success : (tailState5 (copyState 4606)).failed = false :=
  (after_loc_failed (tailState4 (copyState 4606)) _ _).trans tailState4_success

private theorem tailState5_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState5 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_loc_mem (tailState4 (copyState 4606)) _ _) x).trans (tailState4_frame x lo hi)

private theorem tailState6_success : (tailState6 (copyState 4606)).failed = false :=
  (after_const_failed (tailState5 (copyState 4606)) _ _).trans tailState5_success

private theorem tailState6_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState6 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_const_mem (tailState5 (copyState 4606)) _ _) x).trans (tailState5_frame x lo hi)

private theorem tailState7_success : (tailState7 (copyState 4606)).failed = false :=
  (after_shift_failed (tailState6 (copyState 4606)) _ _).trans tailState6_success

private theorem tailState7_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState7 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_shift_mem (tailState6 (copyState 4606)) _ _) x).trans (tailState6_frame x lo hi)

private theorem tailState8_success : (tailState8 (copyState 4606)).failed = false :=
  store_success (tailState7 (copyState 4606)) 6 5 0 ((tailState7_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1) tailState7_success ((tailState7_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) 2684485640 (by rw [(tailState7_control (copyState 4606) input_pc).2.1]; decide) (by decide) (by decide)

private theorem tailState8_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState8 (copyState 4606)).mem x = initialMemory x :=
  (store_frame (tailState7 (copyState 4606)) 6 5 0 ((tailState7_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1) 2684485640 (by rw [(tailState7_control (copyState 4606) input_pc).2.1]; decide) (by decide) x lo hi).trans (tailState7_frame x lo hi)

private theorem tailState9_success : (tailState9 (copyState 4606)).failed = false :=
  (after_loc_failed (tailState8 (copyState 4606)) _ _).trans tailState8_success

private theorem tailState9_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState9 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_loc_mem (tailState8 (copyState 4606)) _ _) x).trans (tailState8_frame x lo hi)

private theorem tailState10_success : (tailState10 (copyState 4606)).failed = false :=
  (after_const_failed (tailState9 (copyState 4606)) _ _).trans tailState9_success

private theorem tailState10_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState10 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_const_mem (tailState9 (copyState 4606)) _ _) x).trans (tailState9_frame x lo hi)

private theorem tailState11_success : (tailState11 (copyState 4606)).failed = false :=
  (after_shift_failed (tailState10 (copyState 4606)) _ _).trans tailState10_success

private theorem tailState11_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState11 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_shift_mem (tailState10 (copyState 4606)) _ _) x).trans (tailState10_frame x lo hi)

private theorem tailState12_success : (tailState12 (copyState 4606)).failed = false :=
  store_success (tailState11 (copyState 4606)) 6 5 0 ((tailState11_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1) tailState11_success ((tailState11_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) 2684485648 (by rw [(tailState11_control (copyState 4606) input_pc).2.1]; decide) (by decide) (by decide)

private theorem tailState12_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState12 (copyState 4606)).mem x = initialMemory x :=
  (store_frame (tailState11 (copyState 4606)) 6 5 0 ((tailState11_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1) 2684485648 (by rw [(tailState11_control (copyState 4606) input_pc).2.1]; decide) (by decide) x lo hi).trans (tailState11_frame x lo hi)

private theorem tailState13_success : (tailState13 (copyState 4606)).failed = false :=
  (after_const_failed (tailState12 (copyState 4606)) _ _).trans tailState12_success

private theorem tailState13_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState13 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_const_mem (tailState12 (copyState 4606)) _ _) x).trans (tailState12_frame x lo hi)

private theorem tailState14_success : (tailState14 (copyState 4606)).failed = false :=
  (after_shift_failed (tailState13 (copyState 4606)) _ _).trans tailState13_success

private theorem tailState14_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState14 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_shift_mem (tailState13 (copyState 4606)) _ _) x).trans (tailState13_frame x lo hi)

private theorem tailState15_success : (tailState15 (copyState 4606)).failed = false :=
  (after_loc_failed (tailState14 (copyState 4606)) _ _).trans tailState14_success

private theorem tailState15_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState15 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_loc_mem (tailState14 (copyState 4606)) _ _) x).trans (tailState14_frame x lo hi)

private theorem tailState16_success : (tailState16 (copyState 4606)).failed = false :=
  store_success (tailState15 (copyState 4606)) 6 5 0 ((tailState15_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1) tailState15_success ((tailState15_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) 2701131776 (by rw [(tailState15_control (copyState 4606) input_pc).2.1]; decide) (by decide) (by decide)

private theorem tailState16_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState16 (copyState 4606)).mem x = initialMemory x :=
  (store_frame (tailState15 (copyState 4606)) 6 5 0 ((tailState15_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1) 2701131776 (by rw [(tailState15_control (copyState 4606) input_pc).2.1]; decide) (by decide) x lo hi).trans (tailState15_frame x lo hi)

private theorem tailState17_success : (tailState17 (copyState 4606)).failed = false :=
  (after_loc_failed (tailState16 (copyState 4606)) _ _).trans tailState16_success

private theorem tailState17_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState17 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_loc_mem (tailState16 (copyState 4606)) _ _) x).trans (tailState16_frame x lo hi)

private theorem tailState18_success : (tailState18 (copyState 4606)).failed = false :=
  store_success (tailState17 (copyState 4606)) 6 5 8 ((tailState17_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1) tailState17_success ((tailState17_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) 2701131784 (by rw [(tailState17_control (copyState 4606) input_pc).2.1]; decide) (by decide) (by decide)

private theorem tailState18_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState18 (copyState 4606)).mem x = initialMemory x :=
  (store_frame (tailState17 (copyState 4606)) 6 5 8 ((tailState17_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1) 2701131784 (by rw [(tailState17_control (copyState 4606) input_pc).2.1]; decide) (by decide) x lo hi).trans (tailState17_frame x lo hi)

private theorem tailState19_success : (tailState19 (copyState 4606)).failed = false :=
  (after_loc_failed (tailState18 (copyState 4606)) _ _).trans tailState18_success

private theorem tailState19_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState19 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_loc_mem (tailState18 (copyState 4606)) _ _) x).trans (tailState18_frame x lo hi)

private theorem tailState20_success : (tailState20 (copyState 4606)).failed = false :=
  store_success (tailState19 (copyState 4606)) 6 5 16 ((tailState19_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1) tailState19_success ((tailState19_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) 2701131792 (by rw [(tailState19_control (copyState 4606) input_pc).2.1]; decide) (by decide) (by decide)

private theorem tailState20_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState20 (copyState 4606)).mem x = initialMemory x :=
  (store_frame (tailState19 (copyState 4606)) 6 5 16 ((tailState19_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1) 2701131792 (by rw [(tailState19_control (copyState 4606) input_pc).2.1]; decide) (by decide) x lo hi).trans (tailState19_frame x lo hi)

private theorem tailState21_success : (tailState21 (copyState 4606)).failed = false :=
  (after_loc_failed (tailState20 (copyState 4606)) _ _).trans tailState20_success

private theorem tailState21_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState21 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_loc_mem (tailState20 (copyState 4606)) _ _) x).trans (tailState20_frame x lo hi)

private theorem tailState22_success : (tailState22 (copyState 4606)).failed = false :=
  store_success (tailState21 (copyState 4606)) 6 5 24 ((tailState21_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1) tailState21_success ((tailState21_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) 2701131800 (by rw [(tailState21_control (copyState 4606) input_pc).2.1]; decide) (by decide) (by decide)

private theorem tailState22_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState22 (copyState 4606)).mem x = initialMemory x :=
  (store_frame (tailState21 (copyState 4606)) 6 5 24 ((tailState21_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1) 2701131800 (by rw [(tailState21_control (copyState 4606) input_pc).2.1]; decide) (by decide) x lo hi).trans (tailState21_frame x lo hi)

private theorem tailState23_success : (tailState23 (copyState 4606)).failed = false :=
  (after_loc_failed (tailState22 (copyState 4606)) _ _).trans tailState22_success

private theorem tailState23_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState23 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_loc_mem (tailState22 (copyState 4606)) _ _) x).trans (tailState22_frame x lo hi)

private theorem tailState24_success : (tailState24 (copyState 4606)).failed = false :=
  store_success (tailState23 (copyState 4606)) 6 5 32 ((tailState23_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1) tailState23_success ((tailState23_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) 2701131808 (by rw [(tailState23_control (copyState 4606) input_pc).2.1]; decide) (by decide) (by decide)

private theorem tailState24_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState24 (copyState 4606)).mem x = initialMemory x :=
  (store_frame (tailState23 (copyState 4606)) 6 5 32 ((tailState23_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1) 2701131808 (by rw [(tailState23_control (copyState 4606) input_pc).2.1]; decide) (by decide) x lo hi).trans (tailState23_frame x lo hi)

private theorem tailState25_success : (tailState25 (copyState 4606)).failed = false :=
  (after_const_failed (tailState24 (copyState 4606)) _ _).trans tailState24_success

private theorem tailState25_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState25 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_const_mem (tailState24 (copyState 4606)) _ _) x).trans (tailState24_frame x lo hi)

private theorem tailState26_success : (tailState26 (copyState 4606)).failed = false :=
  (after_shift_failed (tailState25 (copyState 4606)) _ _).trans tailState25_success

private theorem tailState26_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState26 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_shift_mem (tailState25 (copyState 4606)) _ _) x).trans (tailState25_frame x lo hi)

private theorem tailState27_success : (tailState27 (copyState 4606)).failed = false :=
  (after_const_failed (tailState26 (copyState 4606)) _ _).trans tailState26_success

private theorem tailState27_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState27 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_const_mem (tailState26 (copyState 4606)) _ _) x).trans (tailState26_frame x lo hi)

private theorem tailState28_success : (tailState28 (copyState 4606)).failed = false :=
  (after_shift_failed (tailState27 (copyState 4606)) _ _).trans tailState27_success

private theorem tailState28_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState28 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_shift_mem (tailState27 (copyState 4606)) _ _) x).trans (tailState27_frame x lo hi)

private theorem tailState29_success : (tailState29 (copyState 4606)).failed = false :=
  (after_const_failed (tailState28 (copyState 4606)) _ _).trans tailState28_success

private theorem tailState29_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState29 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_const_mem (tailState28 (copyState 4606)) _ _) x).trans (tailState28_frame x lo hi)

private theorem tailState30_success : (tailState30 (copyState 4606)).failed = false :=
  (after_shift_failed (tailState29 (copyState 4606)) _ _).trans tailState29_success

private theorem tailState30_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState30 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_shift_mem (tailState29 (copyState 4606)) _ _) x).trans (tailState29_frame x lo hi)

private theorem tailState31_success : (tailState31 (copyState 4606)).failed = false :=
  (after_loc_failed (tailState30 (copyState 4606)) _ _).trans tailState30_success

private theorem tailState31_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState31 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_loc_mem (tailState30 (copyState 4606)) _ _) x).trans (tailState30_frame x lo hi)

private theorem tailState32_success : (tailState32 (copyState 4606)).failed = false :=
  (after_jump_failed (tailState31 (copyState 4606)) _).trans tailState31_success

private theorem tailState32_frame (x : BitVec 64) (lo : initialPc ≤ x.toNat)
    (hi : x.toNat < initialPc+208) :
    (tailState32 (copyState 4606)).mem x = initialMemory x :=
  (congrFun (after_jump_mem (tailState31 (copyState 4606)) _) x).trans (tailState31_frame x lo hi)

private theorem zero_pc : (tailState0 (copyState 4606)).pc = 0x8000002c :=
  (congrArg AsmState.pc (tailState0_eq (copyState 4606))).trans input_pc

private theorem zero_memDomain : (tailState0 (copyState 4606)).memDomain = bootstrapDomain :=
  (congrArg AsmState.memDomain (tailState0_eq (copyState 4606))).trans (copyState_fields 4606).2.1

private theorem zero_be : (tailState0 (copyState 4606)).be = false :=
  (congrArg AsmState.be (tailState0_eq (copyState 4606))).trans (copyState_fields 4606).1

private theorem zero_lr : (tailState0 (copyState 4606)).lr = 1 :=
  (congrArg AsmState.lr (tailState0_eq (copyState 4606))).trans (copyState_fields 4606).2.2.2.1

private theorem zero_align : (tailState0 (copyState 4606)).align = 2 :=
  (congrArg AsmState.align (tailState0_eq (copyState 4606))).trans (copyState_fields 4606).2.2.2.2

private theorem checked_step_to (s t : AsmState 64) (i : HolAsm 64)
    (endpoint : after s i = t)
    (bytes : bytesInMemoryHOL s.pc (riscvEnc i) s.mem s.memDomain)
    (link : s.lr = 1) (endian : s.be = false) (alignment : s.align = 2)
    (nonfailed : ¬ t.failed) (admitted : asmOkExact i riscvConfig = true) :
    asmStep riscvConfig s i t := ⟨bytes, link, endian, alignment, endpoint, nonfailed, admitted⟩

private theorem installed_tail_instruction (state : AsmState 64) (pc : Nat)
    (instruction : HolAsm 64) (member : (pc,instruction) ∈ bootstrapBlocks)
    (position : state.pc = BitVec.ofNat 64 pc) (domain : state.memDomain = bootstrapDomain)
    (frame : ∀ x, initialPc ≤ x.toNat → x.toNat < initialPc+208 → state.mem x = initialMemory x)
    (lo : initialPc ≤ pc) (hi : pc+(riscvEnc instruction).length ≤ initialPc+208) :
    bytesInMemoryHOL state.pc (riscvEnc instruction) state.mem state.memDomain := by
  rw [position, domain]
  apply bytesInMemory_changeMem _ _ initialMemory _ bootstrapDomain
  refine ⟨block_bytes (pc,instruction) member, ?_⟩
  intro offset ho
  apply Eq.symm
  apply frame
  all_goals
    rw [← BitVec.ofNat_add, BitVec.toNat_ofNat,
      Nat.mod_eq_of_lt (by norm_num [initialPc] at hi; omega : pc+offset < 2^64)]
    omega

private theorem tail_step0 : asmStep riscvConfig (tailState0 (copyState 4606)) (bootLoc 5 0x8000002c initDataRam) (tailState1 (copyState 4606)) := by
  apply checked_step_to (tailState0 (copyState 4606)) (tailState1 (copyState 4606)) (bootLoc 5 0x8000002c initDataRam) rfl
  · exact installed_tail_instruction (tailState0 (copyState 4606)) 2147483692 (bootLoc 5 0x8000002c initDataRam)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      (zero_pc) (zero_memDomain) tailState0_frame (by decide) (by decide)
  · exact zero_lr
  · exact zero_be
  · exact zero_align
  · simpa only [Bool.not_eq_true] using tailState1_success
  · decide

private theorem tail_guard0 : baselineMachineConfig.progAddresses = (tailState0 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState0 (copyState 4606)) (riscvEnc (bootLoc 5 0x8000002c initDataRam)).length := by
  refine ⟨(zero_memDomain).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [(zero_pc)]; decide
  · rw [(zero_pc)]; decide

private theorem tail_step1 : asmStep riscvConfig (tailState1 (copyState 4606)) (bootConst 6 161) (tailState2 (copyState 4606)) := by
  apply checked_step_to (tailState1 (copyState 4606)) (tailState2 (copyState 4606)) (bootConst 6 161) rfl
  · exact installed_tail_instruction (tailState1 (copyState 4606)) 2147483700 (bootConst 6 161)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState1_control (copyState 4606) input_pc).1) ((tailState1_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState1_frame (by decide) (by decide)
  · exact (tailState1_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState1_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState1_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState2_success
  · decide

private theorem tail_guard1 : baselineMachineConfig.progAddresses = (tailState1 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState1 (copyState 4606)) (riscvEnc (bootConst 6 161)).length := by
  refine ⟨((tailState1_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState1_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState1_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step2 : asmStep riscvConfig (tailState2 (copyState 4606)) (bootShift 6 24) (tailState3 (copyState 4606)) := by
  apply checked_step_to (tailState2 (copyState 4606)) (tailState3 (copyState 4606)) (bootShift 6 24) rfl
  · exact installed_tail_instruction (tailState2 (copyState 4606)) 2147483704 (bootShift 6 24)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState2_control (copyState 4606) input_pc).1) ((tailState2_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState2_frame (by decide) (by decide)
  · exact (tailState2_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState2_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState2_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState3_success
  · decide

private theorem tail_guard2 : baselineMachineConfig.progAddresses = (tailState2 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState2 (copyState 4606)) (riscvEnc (bootShift 6 24)).length := by
  refine ⟨((tailState2_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState2_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState2_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step3 : asmStep riscvConfig (tailState3 (copyState 4606)) (bootStore 6 5 0) (tailState4 (copyState 4606)) := by
  apply checked_step_to (tailState3 (copyState 4606)) (tailState4 (copyState 4606)) (bootStore 6 5 0) rfl
  · exact installed_tail_instruction (tailState3 (copyState 4606)) 2147483708 (bootStore 6 5 0)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState3_control (copyState 4606) input_pc).1) ((tailState3_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState3_frame (by decide) (by decide)
  · exact (tailState3_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState3_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState3_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState4_success
  · decide

private theorem tail_guard3 : baselineMachineConfig.progAddresses = (tailState3 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState3 (copyState 4606)) (riscvEnc (bootStore 6 5 0)).length := by
  refine ⟨((tailState3_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState3_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState3_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step4 : asmStep riscvConfig (tailState4 (copyState 4606)) (bootLoc 5 0x80000040 (initDataRam+8)) (tailState5 (copyState 4606)) := by
  apply checked_step_to (tailState4 (copyState 4606)) (tailState5 (copyState 4606)) (bootLoc 5 0x80000040 (initDataRam+8)) rfl
  · exact installed_tail_instruction (tailState4 (copyState 4606)) 2147483712 (bootLoc 5 0x80000040 (initDataRam+8))
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState4_control (copyState 4606) input_pc).1) ((tailState4_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState4_frame (by decide) (by decide)
  · exact (tailState4_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState4_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState4_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState5_success
  · decide

private theorem tail_guard4 : baselineMachineConfig.progAddresses = (tailState4 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState4 (copyState 4606)) (riscvEnc (bootLoc 5 0x80000040 (initDataRam+8))).length := by
  refine ⟨((tailState4_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState4_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState4_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step5 : asmStep riscvConfig (tailState5 (copyState 4606)) (bootConst 6 2015) (tailState6 (copyState 4606)) := by
  apply checked_step_to (tailState5 (copyState 4606)) (tailState6 (copyState 4606)) (bootConst 6 2015) rfl
  · exact installed_tail_instruction (tailState5 (copyState 4606)) 2147483720 (bootConst 6 2015)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState5_control (copyState 4606) input_pc).1) ((tailState5_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState5_frame (by decide) (by decide)
  · exact (tailState5_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState5_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState5_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState6_success
  · decide

private theorem tail_guard5 : baselineMachineConfig.progAddresses = (tailState5 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState5 (copyState 4606)) (riscvEnc (bootConst 6 2015)).length := by
  refine ⟨((tailState5_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState5_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState5_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step6 : asmStep riscvConfig (tailState6 (copyState 4606)) (bootShift 6 24) (tailState7 (copyState 4606)) := by
  apply checked_step_to (tailState6 (copyState 4606)) (tailState7 (copyState 4606)) (bootShift 6 24) rfl
  · exact installed_tail_instruction (tailState6 (copyState 4606)) 2147483724 (bootShift 6 24)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState6_control (copyState 4606) input_pc).1) ((tailState6_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState6_frame (by decide) (by decide)
  · exact (tailState6_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState6_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState6_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState7_success
  · decide

private theorem tail_guard6 : baselineMachineConfig.progAddresses = (tailState6 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState6 (copyState 4606)) (riscvEnc (bootShift 6 24)).length := by
  refine ⟨((tailState6_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState6_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState6_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step7 : asmStep riscvConfig (tailState7 (copyState 4606)) (bootStore 6 5 0) (tailState8 (copyState 4606)) := by
  apply checked_step_to (tailState7 (copyState 4606)) (tailState8 (copyState 4606)) (bootStore 6 5 0) rfl
  · exact installed_tail_instruction (tailState7 (copyState 4606)) 2147483728 (bootStore 6 5 0)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState7_control (copyState 4606) input_pc).1) ((tailState7_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState7_frame (by decide) (by decide)
  · exact (tailState7_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState7_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState7_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState8_success
  · decide

private theorem tail_guard7 : baselineMachineConfig.progAddresses = (tailState7 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState7 (copyState 4606)) (riscvEnc (bootStore 6 5 0)).length := by
  refine ⟨((tailState7_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState7_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState7_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step8 : asmStep riscvConfig (tailState8 (copyState 4606)) (bootLoc 5 0x80000054 (initDataRam+16)) (tailState9 (copyState 4606)) := by
  apply checked_step_to (tailState8 (copyState 4606)) (tailState9 (copyState 4606)) (bootLoc 5 0x80000054 (initDataRam+16)) rfl
  · exact installed_tail_instruction (tailState8 (copyState 4606)) 2147483732 (bootLoc 5 0x80000054 (initDataRam+16))
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState8_control (copyState 4606) input_pc).1) ((tailState8_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState8_frame (by decide) (by decide)
  · exact (tailState8_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState8_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState8_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState9_success
  · decide

private theorem tail_guard8 : baselineMachineConfig.progAddresses = (tailState8 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState8 (copyState 4606)) (riscvEnc (bootLoc 5 0x80000054 (initDataRam+16))).length := by
  refine ⟨((tailState8_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState8_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState8_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step9 : asmStep riscvConfig (tailState9 (copyState 4606)) (bootConst 6 63) (tailState10 (copyState 4606)) := by
  apply checked_step_to (tailState9 (copyState 4606)) (tailState10 (copyState 4606)) (bootConst 6 63) rfl
  · exact installed_tail_instruction (tailState9 (copyState 4606)) 2147483740 (bootConst 6 63)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState9_control (copyState 4606) input_pc).1) ((tailState9_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState9_frame (by decide) (by decide)
  · exact (tailState9_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState9_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState9_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState10_success
  · decide

private theorem tail_guard9 : baselineMachineConfig.progAddresses = (tailState9 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState9 (copyState 4606)) (riscvEnc (bootConst 6 63)).length := by
  refine ⟨((tailState9_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState9_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState9_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step10 : asmStep riscvConfig (tailState10 (copyState 4606)) (bootShift 6 29) (tailState11 (copyState 4606)) := by
  apply checked_step_to (tailState10 (copyState 4606)) (tailState11 (copyState 4606)) (bootShift 6 29) rfl
  · exact installed_tail_instruction (tailState10 (copyState 4606)) 2147483744 (bootShift 6 29)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState10_control (copyState 4606) input_pc).1) ((tailState10_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState10_frame (by decide) (by decide)
  · exact (tailState10_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState10_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState10_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState11_success
  · decide

private theorem tail_guard10 : baselineMachineConfig.progAddresses = (tailState10 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState10 (copyState 4606)) (riscvEnc (bootShift 6 29)).length := by
  refine ⟨((tailState10_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState10_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState10_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step11 : asmStep riscvConfig (tailState11 (copyState 4606)) (bootStore 6 5 0) (tailState12 (copyState 4606)) := by
  apply checked_step_to (tailState11 (copyState 4606)) (tailState12 (copyState 4606)) (bootStore 6 5 0) rfl
  · exact installed_tail_instruction (tailState11 (copyState 4606)) 2147483748 (bootStore 6 5 0)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState11_control (copyState 4606) input_pc).1) ((tailState11_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState11_frame (by decide) (by decide)
  · exact (tailState11_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState11_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState11_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState12_success
  · decide

private theorem tail_guard11 : baselineMachineConfig.progAddresses = (tailState11 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState11 (copyState 4606)) (riscvEnc (bootStore 6 5 0)).length := by
  refine ⟨((tailState11_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState11_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState11_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step12 : asmStep riscvConfig (tailState12 (copyState 4606)) (bootConst 5 161) (tailState13 (copyState 4606)) := by
  apply checked_step_to (tailState12 (copyState 4606)) (tailState13 (copyState 4606)) (bootConst 5 161) rfl
  · exact installed_tail_instruction (tailState12 (copyState 4606)) 2147483752 (bootConst 5 161)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState12_control (copyState 4606) input_pc).1) ((tailState12_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState12_frame (by decide) (by decide)
  · exact (tailState12_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState12_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState12_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState13_success
  · decide

private theorem tail_guard12 : baselineMachineConfig.progAddresses = (tailState12 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState12 (copyState 4606)) (riscvEnc (bootConst 5 161)).length := by
  refine ⟨((tailState12_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState12_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState12_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step13 : asmStep riscvConfig (tailState13 (copyState 4606)) (bootShift 5 24) (tailState14 (copyState 4606)) := by
  apply checked_step_to (tailState13 (copyState 4606)) (tailState14 (copyState 4606)) (bootShift 5 24) rfl
  · exact installed_tail_instruction (tailState13 (copyState 4606)) 2147483756 (bootShift 5 24)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState13_control (copyState 4606) input_pc).1) ((tailState13_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState13_frame (by decide) (by decide)
  · exact (tailState13_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState13_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState13_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState14_success
  · decide

private theorem tail_guard13 : baselineMachineConfig.progAddresses = (tailState13 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState13 (copyState 4606)) (riscvEnc (bootShift 5 24)).length := by
  refine ⟨((tailState13_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState13_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState13_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step14 : asmStep riscvConfig (tailState14 (copyState 4606)) (bootLoc 6 0x80000070 (initDataRam+24)) (tailState15 (copyState 4606)) := by
  apply checked_step_to (tailState14 (copyState 4606)) (tailState15 (copyState 4606)) (bootLoc 6 0x80000070 (initDataRam+24)) rfl
  · exact installed_tail_instruction (tailState14 (copyState 4606)) 2147483760 (bootLoc 6 0x80000070 (initDataRam+24))
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState14_control (copyState 4606) input_pc).1) ((tailState14_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState14_frame (by decide) (by decide)
  · exact (tailState14_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState14_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState14_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState15_success
  · decide

private theorem tail_guard14 : baselineMachineConfig.progAddresses = (tailState14 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState14 (copyState 4606)) (riscvEnc (bootLoc 6 0x80000070 (initDataRam+24))).length := by
  refine ⟨((tailState14_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState14_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState14_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step15 : asmStep riscvConfig (tailState15 (copyState 4606)) (bootStore 6 5 0) (tailState16 (copyState 4606)) := by
  apply checked_step_to (tailState15 (copyState 4606)) (tailState16 (copyState 4606)) (bootStore 6 5 0) rfl
  · exact installed_tail_instruction (tailState15 (copyState 4606)) 2147483768 (bootStore 6 5 0)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState15_control (copyState 4606) input_pc).1) ((tailState15_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState15_frame (by decide) (by decide)
  · exact (tailState15_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState15_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState15_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState16_success
  · decide

private theorem tail_guard15 : baselineMachineConfig.progAddresses = (tailState15 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState15 (copyState 4606)) (riscvEnc (bootStore 6 5 0)).length := by
  refine ⟨((tailState15_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState15_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState15_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step16 : asmStep riscvConfig (tailState16 (copyState 4606)) (bootLoc 6 0x8000007c initDataEnd) (tailState17 (copyState 4606)) := by
  apply checked_step_to (tailState16 (copyState 4606)) (tailState17 (copyState 4606)) (bootLoc 6 0x8000007c initDataEnd) rfl
  · exact installed_tail_instruction (tailState16 (copyState 4606)) 2147483772 (bootLoc 6 0x8000007c initDataEnd)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState16_control (copyState 4606) input_pc).1) ((tailState16_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState16_frame (by decide) (by decide)
  · exact (tailState16_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState16_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState16_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState17_success
  · decide

private theorem tail_guard16 : baselineMachineConfig.progAddresses = (tailState16 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState16 (copyState 4606)) (riscvEnc (bootLoc 6 0x8000007c initDataEnd)).length := by
  refine ⟨((tailState16_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState16_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState16_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step17 : asmStep riscvConfig (tailState17 (copyState 4606)) (bootStore 6 5 8) (tailState18 (copyState 4606)) := by
  apply checked_step_to (tailState17 (copyState 4606)) (tailState18 (copyState 4606)) (bootStore 6 5 8) rfl
  · exact installed_tail_instruction (tailState17 (copyState 4606)) 2147483780 (bootStore 6 5 8)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState17_control (copyState 4606) input_pc).1) ((tailState17_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState17_frame (by decide) (by decide)
  · exact (tailState17_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState17_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState17_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState18_success
  · decide

private theorem tail_guard17 : baselineMachineConfig.progAddresses = (tailState17 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState17 (copyState 4606)) (riscvEnc (bootStore 6 5 8)).length := by
  refine ⟨((tailState17_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState17_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState17_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step18 : asmStep riscvConfig (tailState18 (copyState 4606)) (bootLoc 6 0x80000088 initDataEnd) (tailState19 (copyState 4606)) := by
  apply checked_step_to (tailState18 (copyState 4606)) (tailState19 (copyState 4606)) (bootLoc 6 0x80000088 initDataEnd) rfl
  · exact installed_tail_instruction (tailState18 (copyState 4606)) 2147483784 (bootLoc 6 0x80000088 initDataEnd)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState18_control (copyState 4606) input_pc).1) ((tailState18_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState18_frame (by decide) (by decide)
  · exact (tailState18_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState18_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState18_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState19_success
  · decide

private theorem tail_guard18 : baselineMachineConfig.progAddresses = (tailState18 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState18 (copyState 4606)) (riscvEnc (bootLoc 6 0x80000088 initDataEnd)).length := by
  refine ⟨((tailState18_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState18_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState18_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step19 : asmStep riscvConfig (tailState19 (copyState 4606)) (bootStore 6 5 16) (tailState20 (copyState 4606)) := by
  apply checked_step_to (tailState19 (copyState 4606)) (tailState20 (copyState 4606)) (bootStore 6 5 16) rfl
  · exact installed_tail_instruction (tailState19 (copyState 4606)) 2147483792 (bootStore 6 5 16)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState19_control (copyState 4606) input_pc).1) ((tailState19_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState19_frame (by decide) (by decide)
  · exact (tailState19_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState19_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState19_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState20_success
  · decide

private theorem tail_guard19 : baselineMachineConfig.progAddresses = (tailState19 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState19 (copyState 4606)) (riscvEnc (bootStore 6 5 16)).length := by
  refine ⟨((tailState19_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState19_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState19_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step20 : asmStep riscvConfig (tailState20 (copyState 4606)) (bootLoc 6 0x80000094 0x800f0134) (tailState21 (copyState 4606)) := by
  apply checked_step_to (tailState20 (copyState 4606)) (tailState21 (copyState 4606)) (bootLoc 6 0x80000094 0x800f0134) rfl
  · exact installed_tail_instruction (tailState20 (copyState 4606)) 2147483796 (bootLoc 6 0x80000094 0x800f0134)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState20_control (copyState 4606) input_pc).1) ((tailState20_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState20_frame (by decide) (by decide)
  · exact (tailState20_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState20_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState20_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState21_success
  · decide

private theorem tail_guard20 : baselineMachineConfig.progAddresses = (tailState20 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState20 (copyState 4606)) (riscvEnc (bootLoc 6 0x80000094 0x800f0134)).length := by
  refine ⟨((tailState20_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState20_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState20_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step21 : asmStep riscvConfig (tailState21 (copyState 4606)) (bootStore 6 5 24) (tailState22 (copyState 4606)) := by
  apply checked_step_to (tailState21 (copyState 4606)) (tailState22 (copyState 4606)) (bootStore 6 5 24) rfl
  · exact installed_tail_instruction (tailState21 (copyState 4606)) 2147483804 (bootStore 6 5 24)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState21_control (copyState 4606) input_pc).1) ((tailState21_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState21_frame (by decide) (by decide)
  · exact (tailState21_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState21_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState21_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState22_success
  · decide

private theorem tail_guard21 : baselineMachineConfig.progAddresses = (tailState21 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState21 (copyState 4606)) (riscvEnc (bootStore 6 5 24)).length := by
  refine ⟨((tailState21_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState21_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState21_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step22 : asmStep riscvConfig (tailState22 (copyState 4606)) (bootLoc 6 0x800000a0 0x800f1000) (tailState23 (copyState 4606)) := by
  apply checked_step_to (tailState22 (copyState 4606)) (tailState23 (copyState 4606)) (bootLoc 6 0x800000a0 0x800f1000) rfl
  · exact installed_tail_instruction (tailState22 (copyState 4606)) 2147483808 (bootLoc 6 0x800000a0 0x800f1000)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState22_control (copyState 4606) input_pc).1) ((tailState22_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState22_frame (by decide) (by decide)
  · exact (tailState22_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState22_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState22_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState23_success
  · decide

private theorem tail_guard22 : baselineMachineConfig.progAddresses = (tailState22 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState22 (copyState 4606)) (riscvEnc (bootLoc 6 0x800000a0 0x800f1000)).length := by
  refine ⟨((tailState22_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState22_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState22_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step23 : asmStep riscvConfig (tailState23 (copyState 4606)) (bootStore 6 5 32) (tailState24 (copyState 4606)) := by
  apply checked_step_to (tailState23 (copyState 4606)) (tailState24 (copyState 4606)) (bootStore 6 5 32) rfl
  · exact installed_tail_instruction (tailState23 (copyState 4606)) 2147483816 (bootStore 6 5 32)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState23_control (copyState 4606) input_pc).1) ((tailState23_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState23_frame (by decide) (by decide)
  · exact (tailState23_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState23_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState23_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState24_success
  · decide

private theorem tail_guard23 : baselineMachineConfig.progAddresses = (tailState23 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState23 (copyState 4606)) (riscvEnc (bootStore 6 5 32)).length := by
  refine ⟨((tailState23_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState23_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState23_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step24 : asmStep riscvConfig (tailState24 (copyState 4606)) (bootConst 11 161) (tailState25 (copyState 4606)) := by
  apply checked_step_to (tailState24 (copyState 4606)) (tailState25 (copyState 4606)) (bootConst 11 161) rfl
  · exact installed_tail_instruction (tailState24 (copyState 4606)) 2147483820 (bootConst 11 161)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState24_control (copyState 4606) input_pc).1) ((tailState24_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState24_frame (by decide) (by decide)
  · exact (tailState24_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState24_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState24_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState25_success
  · decide

private theorem tail_guard24 : baselineMachineConfig.progAddresses = (tailState24 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState24 (copyState 4606)) (riscvEnc (bootConst 11 161)).length := by
  refine ⟨((tailState24_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState24_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState24_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step25 : asmStep riscvConfig (tailState25 (copyState 4606)) (bootShift 11 24) (tailState26 (copyState 4606)) := by
  apply checked_step_to (tailState25 (copyState 4606)) (tailState26 (copyState 4606)) (bootShift 11 24) rfl
  · exact installed_tail_instruction (tailState25 (copyState 4606)) 2147483824 (bootShift 11 24)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState25_control (copyState 4606) input_pc).1) ((tailState25_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState25_frame (by decide) (by decide)
  · exact (tailState25_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState25_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState25_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState26_success
  · decide

private theorem tail_guard25 : baselineMachineConfig.progAddresses = (tailState25 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState25 (copyState 4606)) (riscvEnc (bootShift 11 24)).length := by
  refine ⟨((tailState25_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState25_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState25_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step26 : asmStep riscvConfig (tailState26 (copyState 4606)) (bootConst 12 2015) (tailState27 (copyState 4606)) := by
  apply checked_step_to (tailState26 (copyState 4606)) (tailState27 (copyState 4606)) (bootConst 12 2015) rfl
  · exact installed_tail_instruction (tailState26 (copyState 4606)) 2147483828 (bootConst 12 2015)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState26_control (copyState 4606) input_pc).1) ((tailState26_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState26_frame (by decide) (by decide)
  · exact (tailState26_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState26_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState26_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState27_success
  · decide

private theorem tail_guard26 : baselineMachineConfig.progAddresses = (tailState26 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState26 (copyState 4606)) (riscvEnc (bootConst 12 2015)).length := by
  refine ⟨((tailState26_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState26_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState26_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step27 : asmStep riscvConfig (tailState27 (copyState 4606)) (bootShift 12 24) (tailState28 (copyState 4606)) := by
  apply checked_step_to (tailState27 (copyState 4606)) (tailState28 (copyState 4606)) (bootShift 12 24) rfl
  · exact installed_tail_instruction (tailState27 (copyState 4606)) 2147483832 (bootShift 12 24)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState27_control (copyState 4606) input_pc).1) ((tailState27_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState27_frame (by decide) (by decide)
  · exact (tailState27_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState27_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState27_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState28_success
  · decide

private theorem tail_guard27 : baselineMachineConfig.progAddresses = (tailState27 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState27 (copyState 4606)) (riscvEnc (bootShift 12 24)).length := by
  refine ⟨((tailState27_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState27_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState27_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step28 : asmStep riscvConfig (tailState28 (copyState 4606)) (bootConst 13 63) (tailState29 (copyState 4606)) := by
  apply checked_step_to (tailState28 (copyState 4606)) (tailState29 (copyState 4606)) (bootConst 13 63) rfl
  · exact installed_tail_instruction (tailState28 (copyState 4606)) 2147483836 (bootConst 13 63)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState28_control (copyState 4606) input_pc).1) ((tailState28_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState28_frame (by decide) (by decide)
  · exact (tailState28_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState28_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState28_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState29_success
  · decide

private theorem tail_guard28 : baselineMachineConfig.progAddresses = (tailState28 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState28 (copyState 4606)) (riscvEnc (bootConst 13 63)).length := by
  refine ⟨((tailState28_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState28_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState28_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step29 : asmStep riscvConfig (tailState29 (copyState 4606)) (bootShift 13 29) (tailState30 (copyState 4606)) := by
  apply checked_step_to (tailState29 (copyState 4606)) (tailState30 (copyState 4606)) (bootShift 13 29) rfl
  · exact installed_tail_instruction (tailState29 (copyState 4606)) 2147483840 (bootShift 13 29)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState29_control (copyState 4606) input_pc).1) ((tailState29_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState29_frame (by decide) (by decide)
  · exact (tailState29_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState29_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState29_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState30_success
  · decide

private theorem tail_guard29 : baselineMachineConfig.progAddresses = (tailState29 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState29 (copyState 4606)) (riscvEnc (bootShift 13 29)).length := by
  refine ⟨((tailState29_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState29_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState29_control (copyState 4606) input_pc).1)]; decide

private theorem tail_step30 : asmStep riscvConfig (tailState30 (copyState 4606)) (bootLoc 10 0x800000c4 nativePc) (tailState31 (copyState 4606)) := by
  apply checked_step_to (tailState30 (copyState 4606)) (tailState31 (copyState 4606)) (bootLoc 10 0x800000c4 nativePc) rfl
  · exact installed_tail_instruction (tailState30 (copyState 4606)) 2147483844 (bootLoc 10 0x800000c4 nativePc)
      (by simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore])
      ((tailState30_control (copyState 4606) input_pc).1) ((tailState30_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1) tailState30_frame (by decide) (by decide)
  · exact (tailState30_control (copyState 4606) input_pc).2.2.2.1.trans (copyState_fields 4606).2.2.2.1
  · exact (tailState30_control (copyState 4606) input_pc).2.2.2.2.2.trans (copyState_fields 4606).1
  · exact (tailState30_control (copyState 4606) input_pc).2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2
  · simpa only [Bool.not_eq_true] using tailState31_success
  · decide

private theorem tail_guard30 : baselineMachineConfig.progAddresses = (tailState30 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState30 (copyState 4606)) (riscvEnc (bootLoc 10 0x800000c4 nativePc)).length := by
  refine ⟨((tailState30_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState30_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState30_control (copyState 4606) input_pc).1)]; decide

private theorem final_jump_step (state next : AsmState 64)
    (endpoint : after state (.jump (BitVec.ofNat 64 nativePc - 0x800000cc)) = next)
    (position : state.pc = 0x800000cc) (domain : state.memDomain = bootstrapDomain)
    (frame : ∀ x, initialPc ≤ x.toNat → x.toNat < initialPc+208 → state.mem x = initialMemory x)
    (lr : state.lr = 1) (be : state.be = false) (align : state.align = 2)
    (success : next.failed = false) :
    asmStep riscvConfig state (.jump (BitVec.ofNat 64 nativePc - 0x800000cc)) next := by
  have member : (2147483852, (HolAsm.jump (BitVec.ofNat 64 nativePc - 0x800000cc))) ∈ bootstrapBlocks := by
    simp [bootstrapBlocks, bootLoc, bootConst, bootShift, bootStore]
  have jumpOffset : BitVec.ofNat 64 nativePc - 0x800000cc = 4004#64 := by decide
  have literalMember : (2147483852, (HolAsm.jump 4004#64)) ∈ bootstrapBlocks := by
    simpa only [jumpOffset] using member
  have literalBytes : bytesInMemoryHOL state.pc (riscvEnc (HolAsm.jump 4004#64))
      state.mem state.memDomain :=
    installed_tail_instruction state 2147483852 (.jump 4004#64) literalMember
      position domain frame (by decide) (by decide)
  have bytes : bytesInMemoryHOL state.pc
      (riscvEnc (HolAsm.jump (BitVec.ofNat 64 nativePc - 0x800000cc)))
      state.mem state.memDomain := by
    simpa only [jumpOffset] using literalBytes
  exact checked_step_to state next (.jump (BitVec.ofNat 64 nativePc - 0x800000cc))
    endpoint bytes lr be align (by simpa only [Bool.not_eq_true] using success) (by decide)

private theorem tail_step31 : asmStep riscvConfig (tailState31 (copyState 4606))
    (.jump (BitVec.ofNat 64 nativePc - 0x800000cc)) (tailState32 (copyState 4606)) := by
  have c := tailState31_control (copyState 4606) input_pc
  exact final_jump_step (tailState31 (copyState 4606)) (tailState32 (copyState 4606))
    rfl c.1 (c.2.2.1.trans (copyState_fields 4606).2.1) tailState31_frame
    (c.2.2.2.1.trans (copyState_fields 4606).2.2.2.1)
    (c.2.2.2.2.2.trans (copyState_fields 4606).1)
    (c.2.2.2.2.1.trans (copyState_fields 4606).2.2.2.2) tailState32_success

private theorem tail_guard31 : baselineMachineConfig.progAddresses = (tailState31 (copyState 4606)).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (tailState31 (copyState 4606)) (riscvEnc (.jump (BitVec.ofNat 64 nativePc - 0x800000cc))).length := by
  refine ⟨((tailState31_control (copyState 4606) input_pc).2.2.1.trans (copyState_fields 4606).2.1).symm, ?_⟩
  apply bootstrap_ffi_disjoint
  · rw [((tailState31_control (copyState 4606) input_pc).1)]; decide
  · rw [((tailState31_control (copyState 4606) input_pc).1)]; decide

/-- A source trace carrying all ordinary evaluator guards. -/
private inductive TailCheckedTrace : List (HolAsm 64) → AsmState 64 → AsmState 64 → Prop
  | nil (s) : TailCheckedTrace [] s s
  | cons {s next final code i}
      (step : asmStep riscvConfig s i next)
      (domain : baselineMachineConfig.progAddresses = s.memDomain)
      (ffi : ffiEntryPcsDisjoint baselineMachineConfig s (riscvEnc i).length)
      (rest : TailCheckedTrace code next final) : TailCheckedTrace (i::code) s final

private theorem trace_checked {code s t} (h : TailCheckedTrace code s t) : Checked code s := by
  induction h with
  | nil => trivial
  | @cons s next final code i step domain ffi rest ih =>
    change asmStep riscvConfig s i (after s i) ∧ Checked code (after s i)
    have endpoint : after s i = next := step.2.2.2.2.1
    rw [endpoint]
    exact ⟨step, ih⟩

private theorem trace_guards {code s t} (h : TailCheckedTrace code s t) :
    EvaluatorGuards baselineMachineConfig code s := by
  induction h with
  | nil => trivial
  | @cons s next final code i step domain ffi rest ih =>
    change baselineMachineConfig.progAddresses = s.memDomain ∧
      ffiEntryPcsDisjoint baselineMachineConfig s (riscvEnc i).length ∧
      EvaluatorGuards baselineMachineConfig code (after s i)
    have endpoint : after s i = next := step.2.2.2.2.1
    rw [endpoint]
    exact ⟨domain, ffi, ih⟩

private theorem trace_thirty_two
    (i0 i1 i2 i3 i4 i5 i6 i7 i8 i9 i10 i11 i12 i13 i14 i15 i16 i17 i18 i19 i20 i21 i22 i23 i24 i25 i26 i27 i28 i29 i30 i31 : HolAsm 64)
    (s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 : AsmState 64)
    (step0 : asmStep riscvConfig s0 i0 s1)
    (guard0 : baselineMachineConfig.progAddresses = s0.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s0 (riscvEnc i0).length)
    (step1 : asmStep riscvConfig s1 i1 s2)
    (guard1 : baselineMachineConfig.progAddresses = s1.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s1 (riscvEnc i1).length)
    (step2 : asmStep riscvConfig s2 i2 s3)
    (guard2 : baselineMachineConfig.progAddresses = s2.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s2 (riscvEnc i2).length)
    (step3 : asmStep riscvConfig s3 i3 s4)
    (guard3 : baselineMachineConfig.progAddresses = s3.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s3 (riscvEnc i3).length)
    (step4 : asmStep riscvConfig s4 i4 s5)
    (guard4 : baselineMachineConfig.progAddresses = s4.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s4 (riscvEnc i4).length)
    (step5 : asmStep riscvConfig s5 i5 s6)
    (guard5 : baselineMachineConfig.progAddresses = s5.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s5 (riscvEnc i5).length)
    (step6 : asmStep riscvConfig s6 i6 s7)
    (guard6 : baselineMachineConfig.progAddresses = s6.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s6 (riscvEnc i6).length)
    (step7 : asmStep riscvConfig s7 i7 s8)
    (guard7 : baselineMachineConfig.progAddresses = s7.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s7 (riscvEnc i7).length)
    (step8 : asmStep riscvConfig s8 i8 s9)
    (guard8 : baselineMachineConfig.progAddresses = s8.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s8 (riscvEnc i8).length)
    (step9 : asmStep riscvConfig s9 i9 s10)
    (guard9 : baselineMachineConfig.progAddresses = s9.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s9 (riscvEnc i9).length)
    (step10 : asmStep riscvConfig s10 i10 s11)
    (guard10 : baselineMachineConfig.progAddresses = s10.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s10 (riscvEnc i10).length)
    (step11 : asmStep riscvConfig s11 i11 s12)
    (guard11 : baselineMachineConfig.progAddresses = s11.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s11 (riscvEnc i11).length)
    (step12 : asmStep riscvConfig s12 i12 s13)
    (guard12 : baselineMachineConfig.progAddresses = s12.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s12 (riscvEnc i12).length)
    (step13 : asmStep riscvConfig s13 i13 s14)
    (guard13 : baselineMachineConfig.progAddresses = s13.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s13 (riscvEnc i13).length)
    (step14 : asmStep riscvConfig s14 i14 s15)
    (guard14 : baselineMachineConfig.progAddresses = s14.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s14 (riscvEnc i14).length)
    (step15 : asmStep riscvConfig s15 i15 s16)
    (guard15 : baselineMachineConfig.progAddresses = s15.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s15 (riscvEnc i15).length)
    (step16 : asmStep riscvConfig s16 i16 s17)
    (guard16 : baselineMachineConfig.progAddresses = s16.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s16 (riscvEnc i16).length)
    (step17 : asmStep riscvConfig s17 i17 s18)
    (guard17 : baselineMachineConfig.progAddresses = s17.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s17 (riscvEnc i17).length)
    (step18 : asmStep riscvConfig s18 i18 s19)
    (guard18 : baselineMachineConfig.progAddresses = s18.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s18 (riscvEnc i18).length)
    (step19 : asmStep riscvConfig s19 i19 s20)
    (guard19 : baselineMachineConfig.progAddresses = s19.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s19 (riscvEnc i19).length)
    (step20 : asmStep riscvConfig s20 i20 s21)
    (guard20 : baselineMachineConfig.progAddresses = s20.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s20 (riscvEnc i20).length)
    (step21 : asmStep riscvConfig s21 i21 s22)
    (guard21 : baselineMachineConfig.progAddresses = s21.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s21 (riscvEnc i21).length)
    (step22 : asmStep riscvConfig s22 i22 s23)
    (guard22 : baselineMachineConfig.progAddresses = s22.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s22 (riscvEnc i22).length)
    (step23 : asmStep riscvConfig s23 i23 s24)
    (guard23 : baselineMachineConfig.progAddresses = s23.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s23 (riscvEnc i23).length)
    (step24 : asmStep riscvConfig s24 i24 s25)
    (guard24 : baselineMachineConfig.progAddresses = s24.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s24 (riscvEnc i24).length)
    (step25 : asmStep riscvConfig s25 i25 s26)
    (guard25 : baselineMachineConfig.progAddresses = s25.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s25 (riscvEnc i25).length)
    (step26 : asmStep riscvConfig s26 i26 s27)
    (guard26 : baselineMachineConfig.progAddresses = s26.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s26 (riscvEnc i26).length)
    (step27 : asmStep riscvConfig s27 i27 s28)
    (guard27 : baselineMachineConfig.progAddresses = s27.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s27 (riscvEnc i27).length)
    (step28 : asmStep riscvConfig s28 i28 s29)
    (guard28 : baselineMachineConfig.progAddresses = s28.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s28 (riscvEnc i28).length)
    (step29 : asmStep riscvConfig s29 i29 s30)
    (guard29 : baselineMachineConfig.progAddresses = s29.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s29 (riscvEnc i29).length)
    (step30 : asmStep riscvConfig s30 i30 s31)
    (guard30 : baselineMachineConfig.progAddresses = s30.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s30 (riscvEnc i30).length)
    (step31 : asmStep riscvConfig s31 i31 s32)
    (guard31 : baselineMachineConfig.progAddresses = s31.memDomain ∧ ffiEntryPcsDisjoint baselineMachineConfig s31 (riscvEnc i31).length)
    : TailCheckedTrace [i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28, i29, i30, i31] s0 s32 :=
  .cons step0 guard0.1 guard0.2 (.cons step1 guard1.1 guard1.2 (.cons step2 guard2.1 guard2.2 (.cons step3 guard3.1 guard3.2 (.cons step4 guard4.1 guard4.2 (.cons step5 guard5.1 guard5.2 (.cons step6 guard6.1 guard6.2 (.cons step7 guard7.1 guard7.2 (.cons step8 guard8.1 guard8.2 (.cons step9 guard9.1 guard9.2 (.cons step10 guard10.1 guard10.2 (.cons step11 guard11.1 guard11.2 (.cons step12 guard12.1 guard12.2 (.cons step13 guard13.1 guard13.2 (.cons step14 guard14.1 guard14.2 (.cons step15 guard15.1 guard15.2 (.cons step16 guard16.1 guard16.2 (.cons step17 guard17.1 guard17.2 (.cons step18 guard18.1 guard18.2 (.cons step19 guard19.1 guard19.2 (.cons step20 guard20.1 guard20.2 (.cons step21 guard21.1 guard21.2 (.cons step22 guard22.1 guard22.2 (.cons step23 guard23.1 guard23.2 (.cons step24 guard24.1 guard24.2 (.cons step25 guard25.1 guard25.2 (.cons step26 guard26.1 guard26.2 (.cons step27 guard27.1 guard27.2 (.cons step28 guard28.1 guard28.2 (.cons step29 guard29.1 guard29.2 (.cons step30 guard30.1 guard30.2 (.cons step31 guard31.1 guard31.2 (.nil s32))))))))))))))))))))))))))))))))

private theorem tail_trace : TailCheckedTrace tailCode (tailState0 (copyState 4606)) (tailState32 (copyState 4606)) :=
  trace_thirty_two
    (bootLoc 5 0x8000002c initDataRam)
    (bootConst 6 161)
    (bootShift 6 24)
    (bootStore 6 5 0)
    (bootLoc 5 0x80000040 (initDataRam+8))
    (bootConst 6 2015)
    (bootShift 6 24)
    (bootStore 6 5 0)
    (bootLoc 5 0x80000054 (initDataRam+16))
    (bootConst 6 63)
    (bootShift 6 29)
    (bootStore 6 5 0)
    (bootConst 5 161)
    (bootShift 5 24)
    (bootLoc 6 0x80000070 (initDataRam+24))
    (bootStore 6 5 0)
    (bootLoc 6 0x8000007c initDataEnd)
    (bootStore 6 5 8)
    (bootLoc 6 0x80000088 initDataEnd)
    (bootStore 6 5 16)
    (bootLoc 6 0x80000094 0x800f0134)
    (bootStore 6 5 24)
    (bootLoc 6 0x800000a0 0x800f1000)
    (bootStore 6 5 32)
    (bootConst 11 161)
    (bootShift 11 24)
    (bootConst 12 2015)
    (bootShift 12 24)
    (bootConst 13 63)
    (bootShift 13 29)
    (bootLoc 10 0x800000c4 nativePc)
    (.jump (BitVec.ofNat 64 nativePc - 0x800000cc))
    (tailState0 (copyState 4606)) (tailState1 (copyState 4606)) (tailState2 (copyState 4606)) (tailState3 (copyState 4606)) (tailState4 (copyState 4606)) (tailState5 (copyState 4606)) (tailState6 (copyState 4606)) (tailState7 (copyState 4606)) (tailState8 (copyState 4606)) (tailState9 (copyState 4606)) (tailState10 (copyState 4606)) (tailState11 (copyState 4606)) (tailState12 (copyState 4606)) (tailState13 (copyState 4606)) (tailState14 (copyState 4606)) (tailState15 (copyState 4606)) (tailState16 (copyState 4606)) (tailState17 (copyState 4606)) (tailState18 (copyState 4606)) (tailState19 (copyState 4606)) (tailState20 (copyState 4606)) (tailState21 (copyState 4606)) (tailState22 (copyState 4606)) (tailState23 (copyState 4606)) (tailState24 (copyState 4606)) (tailState25 (copyState 4606)) (tailState26 (copyState 4606)) (tailState27 (copyState 4606)) (tailState28 (copyState 4606)) (tailState29 (copyState 4606)) (tailState30 (copyState 4606)) (tailState31 (copyState 4606)) (tailState32 (copyState 4606))
    tail_step0 tail_guard0 tail_step1 tail_guard1 tail_step2 tail_guard2 tail_step3 tail_guard3 tail_step4 tail_guard4 tail_step5 tail_guard5 tail_step6 tail_guard6 tail_step7 tail_guard7 tail_step8 tail_guard8 tail_step9 tail_guard9 tail_step10 tail_guard10 tail_step11 tail_guard11 tail_step12 tail_guard12 tail_step13 tail_guard13 tail_step14 tail_guard14 tail_step15 tail_guard15 tail_step16 tail_guard16 tail_step17 tail_guard17 tail_step18 tail_guard18 tail_step19 tail_guard19 tail_step20 tail_guard20 tail_step21 tail_guard21 tail_step22 tail_guard22 tail_step23 tail_guard23 tail_step24 tail_guard24 tail_step25 tail_guard25 tail_step26 tail_guard26 tail_step27 tail_guard27 tail_step28 tail_guard28 tail_step29 tail_guard29 tail_step30 tail_guard30 tail_step31 tail_guard31

/-- The complete real tail is checked with no supplied execution premises. -/
theorem tail_checked : Checked tailCode (copyState 4606) :=
  Eq.mp (congrArg (Checked tailCode) (tailState0_eq (copyState 4606))) (trace_checked tail_trace)

/-- All tail instructions execute ordinary target semantics in the compiler evaluator. -/
theorem tail_guards : EvaluatorGuards baselineMachineConfig tailCode (copyState 4606) :=
  Eq.mp (congrArg (EvaluatorGuards baselineMachineConfig tailCode)
    (tailState0_eq (copyState 4606))) (trace_guards tail_trace)

end InitECandidate.Proofs.BootstrapStraightLine
