import InitECandidate.Proofs.BootstrapTailControlFacts
import InitECandidate.Proofs.BootstrapCopyFacts
import InitECandidate.Proofs.BootstrapTailWrites

set_option maxRecDepth 8192
set_option linter.unusedSimpArgs false

set_option autoImplicit false

namespace InitECandidate.Proofs.BootstrapStraightLine
open InitE
open Flapjack Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.AsmSem
open Flapjack.Compiler.Backend.LabToTarget
open Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BootstrapCopy InitECandidate.Proofs.BootstrapSteps


@[simp] theorem store_memory (n r : Nat) (address : HolAddr 64) (s : AsmState 64) :
    (memStore n r address s).mem = wmwMem s.be s.mem
      (if s.be then addrHOL address s + BitVec.ofNat 64 (n-1) else addrHOL address s)
      n (s.regs r) := by
  simp only [memStore, readReg, writeMemWord_eq,
    assertState_mem]

@[simp] theorem after_loc_mem (s : AsmState 64) (r : Nat) (off : BitVec 64) :
    (after s (.loc r off)).mem = s.mem := rfl
@[simp] theorem after_const_mem (s : AsmState 64) (r : Nat) (v : BitVec 64) :
    (after s (.inst (.const r v))).mem = s.mem := rfl
@[simp] theorem after_shift_mem (s : AsmState 64) (r : Nat) (v : BitVec 64) :
    (after s (.inst (.arith (.shift .lsl r r (.imm v))))).mem = s.mem := rfl
@[simp] theorem after_jump_mem (s : AsmState 64) (v : BitVec 64) :
    (after s (.jump v)).mem = s.mem := rfl
theorem asm_store_memory {width : Nat} [NeZero width] (s : AsmState width)
    (r b : Nat) (off nextPc : BitVec width) :
    (asmUpd (.inst (.mem .store r (.addr b off))) nextPc s).mem =
      wmwMem s.be s.mem
        (if s.be then s.regs b + off + BitVec.ofNat width (width / 8 - 1)
         else s.regs b + off) (width / 8) (s.regs r) := by
  simp only [asmUpd, instUpd, memOp, memStore, readReg, writeMemWord_eq,
    assertState_mem, addrHOL]
  rfl

@[simp] theorem after_store_mem (s : AsmState 64) (r b : Nat) (off : BitVec 64) :
    (after s (.inst (.mem .store r (.addr b off)))).mem =
      wmwMem s.be s.mem (if s.be then s.regs b + off + 7 else s.regs b + off)
      8 (s.regs r) :=
  asm_store_memory s r b off _

@[simp] theorem after_loc_pc (s : AsmState 64) (r : Nat) (off : BitVec 64) :
    (after s (.loc r off)).pc = s.pc + 8 := (control_loc s r off).1
@[simp] theorem after_loc_regs (s : AsmState 64) (r : Nat) (off : BitVec 64) :
    (after s (.loc r off)).regs = (fun x => if x = r then s.pc + off else s.regs x) := (control_loc s r off).2.1
@[simp] theorem after_loc_be (s : AsmState 64) (r : Nat) (off : BitVec 64) :
    (after s (.loc r off)).be = s.be := (control_loc s r off).2.2.2.2.2
@[simp] theorem after_const_pc (s : AsmState 64) (r : Nat) (v : BitVec 64) :
    (after s (.inst (.const r v))).pc = s.pc + BitVec.ofNat 64 (riscvEnc (.inst (.const r v))).length := (control_const s r v _ rfl).1
@[simp] theorem after_const_regs (s : AsmState 64) (r : Nat) (v : BitVec 64) :
    (after s (.inst (.const r v))).regs = (fun x => if x = r then v else s.regs x) := (control_const s r v _ rfl).2.1
@[simp] theorem after_const_be (s : AsmState 64) (r : Nat) (v : BitVec 64) :
    (after s (.inst (.const r v))).be = s.be := (control_const s r v _ rfl).2.2.2.2.2
@[simp] theorem after_shift_pc (s : AsmState 64) (r : Nat) (v : BitVec 64) :
    (after s (.inst (.arith (.shift .lsl r r (.imm v))))).pc = s.pc + BitVec.ofNat 64 (riscvEnc (.inst (.arith (.shift .lsl r r (.imm v))))).length := (control_shift s r v _ rfl).1
@[simp] theorem after_shift_regs (s : AsmState 64) (r : Nat) (v : BitVec 64) :
    (after s (.inst (.arith (.shift .lsl r r (.imm v))))).regs = (fun x => if x = r then wordShift .lsl (s.regs r) v.toNat else s.regs x) := (control_shift s r v _ rfl).2.1
@[simp] theorem after_shift_be (s : AsmState 64) (r : Nat) (v : BitVec 64) :
    (after s (.inst (.arith (.shift .lsl r r (.imm v))))).be = s.be := (control_shift s r v _ rfl).2.2.2.2.2
@[simp] theorem after_store_pc (s : AsmState 64) (r b : Nat) (off : BitVec 64) :
    (after s (.inst (.mem .store r (.addr b off)))).pc = s.pc + BitVec.ofNat 64 (riscvEnc (.inst (.mem .store r (.addr b off)))).length := (control_store s r b off _ rfl).1
@[simp] theorem after_store_regs (s : AsmState 64) (r b : Nat) (off : BitVec 64) :
    (after s (.inst (.mem .store r (.addr b off)))).regs = s.regs := (control_store s r b off _ rfl).2.1
@[simp] theorem after_store_be (s : AsmState 64) (r b : Nat) (off : BitVec 64) :
    (after s (.inst (.mem .store r (.addr b off)))).be = s.be := (control_store s r b off _ rfl).2.2.2.2.2
@[simp] theorem after_jump_pc (s : AsmState 64) (v : BitVec 64) :
    (after s (.jump v)).pc = s.pc + v := (control_jump s v).1
@[simp] theorem after_jump_regs (s : AsmState 64) (v : BitVec 64) :
    (after s (.jump v)).regs = s.regs := (control_jump s v).2.1
@[simp] theorem after_jump_be (s : AsmState 64) (v : BitVec 64) :
    (after s (.jump v)).be = s.be := (control_jump s v).2.2.2.2.2

def tailChunk0 : List (HolAsm 64) := [bootLoc 5 2147483692 2684485632, bootConst 6 161, bootShift 6 24, bootStore 6 5 0]
@[simp] theorem tailChunk0_mem (s : AsmState 64) :
    (run tailChunk0 s).mem = (wmwMem s.be s.mem (if s.be then ((s.pc + (BitVec.ofNat 64 2684485632 - BitVec.ofNat 64 2147483692)) + BitVec.ofNat 64 0) + 7 else ((s.pc + (BitVec.ofNat 64 2684485632 - BitVec.ofNat 64 2147483692)) + BitVec.ofNat 64 0)) 8 (wordShift .lsl (BitVec.ofNat 64 161) 24)) := by
  simp [tailChunk0, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
@[simp] theorem tailChunk0_pc (s : AsmState 64) :
    (run tailChunk0 s).pc = ((((s.pc + 8) + 4) + 4) + 4) := by
  simp [tailChunk0, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
@[simp] theorem tailChunk0_regs (s : AsmState 64) :
    (run tailChunk0 s).regs = (fun r => (if r = 6 then (wordShift .lsl (BitVec.ofNat 64 161) 24) else (if r = 5 then (s.pc + (BitVec.ofNat 64 2684485632 - BitVec.ofNat 64 2147483692)) else s.regs r))) := by
  funext r
  simp [tailChunk0, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
  split_ifs <;> simp_all
@[simp] theorem tailChunk0_be (s : AsmState 64) :
    (run tailChunk0 s).be = s.be := by
  simp [tailChunk0, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
def tailChunk1 : List (HolAsm 64) := [bootLoc 5 2147483712 2684485640, bootConst 6 2015, bootShift 6 24, bootStore 6 5 0]
@[simp] theorem tailChunk1_mem (s : AsmState 64) :
    (run tailChunk1 s).mem = (wmwMem s.be s.mem (if s.be then ((s.pc + (BitVec.ofNat 64 2684485640 - BitVec.ofNat 64 2147483712)) + BitVec.ofNat 64 0) + 7 else ((s.pc + (BitVec.ofNat 64 2684485640 - BitVec.ofNat 64 2147483712)) + BitVec.ofNat 64 0)) 8 (wordShift .lsl (BitVec.ofNat 64 2015) 24)) := by
  simp [tailChunk1, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
@[simp] theorem tailChunk1_pc (s : AsmState 64) :
    (run tailChunk1 s).pc = ((((s.pc + 8) + 4) + 4) + 4) := by
  simp [tailChunk1, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
@[simp] theorem tailChunk1_regs (s : AsmState 64) :
    (run tailChunk1 s).regs = (fun r => (if r = 6 then (wordShift .lsl (BitVec.ofNat 64 2015) 24) else (if r = 5 then (s.pc + (BitVec.ofNat 64 2684485640 - BitVec.ofNat 64 2147483712)) else s.regs r))) := by
  funext r
  simp [tailChunk1, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
  split_ifs <;> simp_all
@[simp] theorem tailChunk1_be (s : AsmState 64) :
    (run tailChunk1 s).be = s.be := by
  simp [tailChunk1, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
def tailChunk2 : List (HolAsm 64) := [bootLoc 5 2147483732 2684485648, bootConst 6 63, bootShift 6 29, bootStore 6 5 0]
@[simp] theorem tailChunk2_mem (s : AsmState 64) :
    (run tailChunk2 s).mem = (wmwMem s.be s.mem (if s.be then ((s.pc + (BitVec.ofNat 64 2684485648 - BitVec.ofNat 64 2147483732)) + BitVec.ofNat 64 0) + 7 else ((s.pc + (BitVec.ofNat 64 2684485648 - BitVec.ofNat 64 2147483732)) + BitVec.ofNat 64 0)) 8 (wordShift .lsl (BitVec.ofNat 64 63) 29)) := by
  simp [tailChunk2, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
@[simp] theorem tailChunk2_pc (s : AsmState 64) :
    (run tailChunk2 s).pc = ((((s.pc + 8) + 4) + 4) + 4) := by
  simp [tailChunk2, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
@[simp] theorem tailChunk2_regs (s : AsmState 64) :
    (run tailChunk2 s).regs = (fun r => (if r = 6 then (wordShift .lsl (BitVec.ofNat 64 63) 29) else (if r = 5 then (s.pc + (BitVec.ofNat 64 2684485648 - BitVec.ofNat 64 2147483732)) else s.regs r))) := by
  funext r
  simp [tailChunk2, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
  split_ifs <;> simp_all
@[simp] theorem tailChunk2_be (s : AsmState 64) :
    (run tailChunk2 s).be = s.be := by
  simp [tailChunk2, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
def tailChunk3 : List (HolAsm 64) := [bootConst 5 161, bootShift 5 24, bootLoc 6 2147483760 2684485656, bootStore 6 5 0]
@[simp] theorem tailChunk3_mem (s : AsmState 64) :
    (run tailChunk3 s).mem = (wmwMem s.be s.mem (if s.be then ((wordShift .lsl (BitVec.ofNat 64 161) 24) + BitVec.ofNat 64 0) + 7 else ((wordShift .lsl (BitVec.ofNat 64 161) 24) + BitVec.ofNat 64 0)) 8 (((s.pc + 4) + 4) + (BitVec.ofNat 64 2684485656 - BitVec.ofNat 64 2147483760))) := by
  simp [tailChunk3, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
@[simp] theorem tailChunk3_pc (s : AsmState 64) :
    (run tailChunk3 s).pc = ((((s.pc + 4) + 4) + 8) + 4) := by
  simp [tailChunk3, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
@[simp] theorem tailChunk3_regs (s : AsmState 64) :
    (run tailChunk3 s).regs = (fun r => (if r = 6 then (((s.pc + 4) + 4) + (BitVec.ofNat 64 2684485656 - BitVec.ofNat 64 2147483760)) else (if r = 5 then (wordShift .lsl (BitVec.ofNat 64 161) 24) else s.regs r))) := by
  funext r
  simp [tailChunk3, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
  split_ifs <;> simp_all
@[simp] theorem tailChunk3_be (s : AsmState 64) :
    (run tailChunk3 s).be = s.be := by
  simp [tailChunk3, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
def tailChunk4 : List (HolAsm 64) := [bootLoc 6 2147483772 2684522480, bootStore 6 5 8, bootLoc 6 2147483784 2684522480, bootStore 6 5 16]
@[simp] theorem tailChunk4_mem (s : AsmState 64) :
    (run tailChunk4 s).mem = (wmwMem s.be (wmwMem s.be s.mem (if s.be then (s.regs 5 + BitVec.ofNat 64 8) + 7 else (s.regs 5 + BitVec.ofNat 64 8)) 8 (s.pc + (BitVec.ofNat 64 2684522480 - BitVec.ofNat 64 2147483772))) (if s.be then (s.regs 5 + BitVec.ofNat 64 16) + 7 else (s.regs 5 + BitVec.ofNat 64 16)) 8 (((s.pc + 8) + 4) + (BitVec.ofNat 64 2684522480 - BitVec.ofNat 64 2147483784))) := by
  simp [tailChunk4, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
@[simp] theorem tailChunk4_pc (s : AsmState 64) :
    (run tailChunk4 s).pc = ((((s.pc + 8) + 4) + 8) + 4) := by
  simp [tailChunk4, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
@[simp] theorem tailChunk4_regs (s : AsmState 64) :
    (run tailChunk4 s).regs = (fun r => (if r = 6 then (((s.pc + 8) + 4) + (BitVec.ofNat 64 2684522480 - BitVec.ofNat 64 2147483784)) else s.regs r)) := by
  funext r
  simp [tailChunk4, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
  split_ifs <;> simp_all
@[simp] theorem tailChunk4_be (s : AsmState 64) :
    (run tailChunk4 s).be = s.be := by
  simp [tailChunk4, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
def tailChunk5 : List (HolAsm 64) := [bootLoc 6 2147483796 2148466996, bootStore 6 5 24, bootLoc 6 2147483808 2148470784, bootStore 6 5 32]
@[simp] theorem tailChunk5_mem (s : AsmState 64) :
    (run tailChunk5 s).mem = (wmwMem s.be (wmwMem s.be s.mem (if s.be then (s.regs 5 + BitVec.ofNat 64 24) + 7 else (s.regs 5 + BitVec.ofNat 64 24)) 8 (s.pc + (BitVec.ofNat 64 2148466996 - BitVec.ofNat 64 2147483796))) (if s.be then (s.regs 5 + BitVec.ofNat 64 32) + 7 else (s.regs 5 + BitVec.ofNat 64 32)) 8 (((s.pc + 8) + 4) + (BitVec.ofNat 64 2148470784 - BitVec.ofNat 64 2147483808))) := by
  simp [tailChunk5, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
@[simp] theorem tailChunk5_pc (s : AsmState 64) :
    (run tailChunk5 s).pc = ((((s.pc + 8) + 4) + 8) + 4) := by
  simp [tailChunk5, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
@[simp] theorem tailChunk5_regs (s : AsmState 64) :
    (run tailChunk5 s).regs = (fun r => (if r = 6 then (((s.pc + 8) + 4) + (BitVec.ofNat 64 2148470784 - BitVec.ofNat 64 2147483808)) else s.regs r)) := by
  funext r
  simp [tailChunk5, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
  split_ifs <;> simp_all
@[simp] theorem tailChunk5_be (s : AsmState 64) :
    (run tailChunk5 s).be = s.be := by
  simp [tailChunk5, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
def tailChunk6 : List (HolAsm 64) := [bootConst 11 161, bootShift 11 24, bootConst 12 2015, bootShift 12 24]
@[simp] theorem tailChunk6_mem (s : AsmState 64) :
    (run tailChunk6 s).mem = s.mem := by
  simp [tailChunk6, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
@[simp] theorem tailChunk6_pc (s : AsmState 64) :
    (run tailChunk6 s).pc = ((((s.pc + 4) + 4) + 4) + 4) := by
  simp [tailChunk6, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
@[simp] theorem tailChunk6_regs (s : AsmState 64) :
    (run tailChunk6 s).regs = (fun r => (if r = 12 then (wordShift .lsl (BitVec.ofNat 64 2015) 24) else (if r = 11 then (wordShift .lsl (BitVec.ofNat 64 161) 24) else s.regs r))) := by
  funext r
  simp [tailChunk6, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
  split_ifs <;> simp_all
@[simp] theorem tailChunk6_be (s : AsmState 64) :
    (run tailChunk6 s).be = s.be := by
  simp [tailChunk6, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
def tailChunk7 : List (HolAsm 64) := [bootConst 13 63, bootShift 13 29, bootLoc 10 2147483844 2147487856, (.jump (4004 : BitVec 64))]
@[simp] theorem tailChunk7_mem (s : AsmState 64) :
    (run tailChunk7 s).mem = s.mem := by
  simp [tailChunk7, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
@[simp] theorem tailChunk7_pc (s : AsmState 64) :
    (run tailChunk7 s).pc = ((((s.pc + 4) + 4) + 8) + 4004) := by
  simp [tailChunk7, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
@[simp] theorem tailChunk7_regs (s : AsmState 64) :
    (run tailChunk7 s).regs = (fun r => (if r = 13 then (wordShift .lsl (BitVec.ofNat 64 63) 29) else (if r = 10 then (((s.pc + 4) + 4) + (BitVec.ofNat 64 2147487856 - BitVec.ofNat 64 2147483844)) else s.regs r))) := by
  funext r
  simp [tailChunk7, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
  split_ifs <;> simp_all
@[simp] theorem tailChunk7_be (s : AsmState 64) :
    (run tailChunk7 s).be = s.be := by
  simp [tailChunk7, run, bootLoc, bootConst, bootShift, bootStore, wordShift]
theorem tail_chunks : tailCode = tailChunk0 ++ tailChunk1 ++ tailChunk2 ++ tailChunk3 ++ tailChunk4 ++ tailChunk5 ++ tailChunk6 ++ tailChunk7 := by rfl
theorem run_eight (a b c d e f g h : List (HolAsm 64)) (s : AsmState 64) :
    run (a ++ b ++ c ++ d ++ e ++ f ++ g ++ h) s =
      run h (run g (run f (run e (run d (run c (run b (run a s))))))) := by
  simp only [run_append]

theorem tail_memory_calculation (s0 s1 s2 s3 s4 s5 s6 s7 s8 : AsmState 64)
    (pc : s0.pc = 0x8000002c) (be : s0.be = false)
    (h0 : s1.mem = (run tailChunk0 s0).mem ∧ s1.pc = (run tailChunk0 s0).pc ∧ s1.regs = (run tailChunk0 s0).regs ∧ s1.be = (run tailChunk0 s0).be)
    (h1 : s2.mem = (run tailChunk1 s1).mem ∧ s2.pc = (run tailChunk1 s1).pc ∧ s2.regs = (run tailChunk1 s1).regs ∧ s2.be = (run tailChunk1 s1).be)
    (h2 : s3.mem = (run tailChunk2 s2).mem ∧ s3.pc = (run tailChunk2 s2).pc ∧ s3.regs = (run tailChunk2 s2).regs ∧ s3.be = (run tailChunk2 s2).be)
    (h3 : s4.mem = (run tailChunk3 s3).mem ∧ s4.pc = (run tailChunk3 s3).pc ∧ s4.regs = (run tailChunk3 s3).regs ∧ s4.be = (run tailChunk3 s3).be)
    (h4 : s5.mem = (run tailChunk4 s4).mem ∧ s5.pc = (run tailChunk4 s4).pc ∧ s5.regs = (run tailChunk4 s4).regs ∧ s5.be = (run tailChunk4 s4).be)
    (h5 : s6.mem = (run tailChunk5 s5).mem ∧ s6.pc = (run tailChunk5 s5).pc ∧ s6.regs = (run tailChunk5 s5).regs ∧ s6.be = (run tailChunk5 s5).be)
    (h6 : s7.mem = (run tailChunk6 s6).mem ∧ s7.pc = (run tailChunk6 s6).pc ∧ s7.regs = (run tailChunk6 s6).regs ∧ s7.be = (run tailChunk6 s6).be)
    (h7 : s8.mem = (run tailChunk7 s7).mem ∧ s8.pc = (run tailChunk7 s7).pc ∧ s8.regs = (run tailChunk7 s7).regs ∧ s8.be = (run tailChunk7 s7).be)
    : s8.mem = tailWrites s0.mem := by
  simp [h0.1, h0.2.1, h0.2.2.1, h0.2.2.2, h1.1, h1.2.1, h1.2.2.1, h1.2.2.2, h2.1, h2.2.1, h2.2.2.1, h2.2.2.2, h3.1, h3.2.1, h3.2.2.1, h3.2.2.2, h4.1, h4.2.1, h4.2.2.1, h4.2.2.2, h5.1, h5.2.1, h5.2.2.1, h5.2.2.2, h6.1, h6.2.1, h6.2.2.1, h6.2.2.2, h7.1, h7.2.1, h7.2.2.1, h7.2.2.2, tailWrites, pc, be, wordShift, nativePc, initDataRam, initDataEnd, sourceBase, stackStart, stackSize, ramEnd, ramStart, ramSize]

set_option maxRecDepth 32768 in
theorem tail_memory (s : AsmState 64) :
    (run tailCode {s with pc := 0x8000002c, be := false}).mem = tailWrites s.mem := by
  have pipeline := run_eight tailChunk0 tailChunk1 tailChunk2 tailChunk3
    tailChunk4 tailChunk5 tailChunk6 tailChunk7 {s with pc := 0x8000002c, be := false}
  have entry := congrArg (fun code => run code {s with pc := 0x8000002c, be := false}) tail_chunks
  have full := entry.trans pipeline
  calc
    _ = (run tailChunk7 (run tailChunk6 (run tailChunk5 (run tailChunk4
        (run tailChunk3 (run tailChunk2 (run tailChunk1 (run tailChunk0
          {s with pc := 0x8000002c, be := false})))))))).mem := congrArg AsmState.mem full
    _ = _ := by
      let s0 := {s with pc := 0x8000002c, be := false}
      let s1 := run tailChunk0 s0
      let s2 := run tailChunk1 s1
      let s3 := run tailChunk2 s2
      let s4 := run tailChunk3 s3
      let s5 := run tailChunk4 s4
      let s6 := run tailChunk5 s5
      let s7 := run tailChunk6 s6
      let s8 := run tailChunk7 s7
      exact (tail_memory_calculation s0 s1 s2 s3 s4 s5 s6 s7 s8 rfl rfl ⟨rfl, rfl, rfl, rfl⟩ ⟨rfl, rfl, rfl, rfl⟩ ⟨rfl, rfl, rfl, rfl⟩ ⟨rfl, rfl, rfl, rfl⟩ ⟨rfl, rfl, rfl, rfl⟩ ⟨rfl, rfl, rfl, rfl⟩ ⟨rfl, rfl, rfl, rfl⟩ ⟨rfl, rfl, rfl, rfl⟩)

private theorem unchanged_start (s : AsmState 64)
    (pc : s.pc = 0x8000002c) (be : s.be = false) :
    {s with pc := 0x8000002c, be := false} = s := by
  cases s
  simp_all

/-- The tail computes the installation memory from its actual loop endpoint. -/
theorem tail_copy_memory :
    (run tailCode (copyState 4606)).mem = installedMemory := by
  have pc : (copyState 4606).pc = 0x8000002c := by
    have value := copyState_pc 4606 (Nat.le_refl 4606)
    simpa only [show ¬ (4606 < 4606) by omega, if_false] using value
  have be : (copyState 4606).be = false := (copyState_fields 4606).1
  have start := unchanged_start (copyState 4606) pc be
  have initial := congrArg (fun t => (run tailCode t).mem) start.symm
  exact initial.trans ((tail_memory (copyState 4606)).trans
    ((congrArg tailWrites copyExit_memory).trans tailWrites_copied_memory))

end InitECandidate.Proofs.BootstrapStraightLine
