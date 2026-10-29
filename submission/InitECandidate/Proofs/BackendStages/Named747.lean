import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed747
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody747_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody747_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody747_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody747_3 : StackLang.HolProg 64 :=
.seq NamedBody747_1 NamedBody747_2

def NamedBody747_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody747_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody747_3 NamedBody747_4

def NamedBody747_6 : StackLang.HolProg 64 :=
.seq NamedBody747_0 NamedBody747_5

def NamedBody747_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody747_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 288#64)

def NamedBody747_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody747_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody747_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3307#64)

def NamedBody747_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody747_13 : StackLang.HolProg 64 :=
.seq NamedBody747_11 NamedBody747_12

def NamedBody747_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody747_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody747_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody747_17 : StackLang.HolProg 64 :=
.seq NamedBody747_15 NamedBody747_16

def NamedBody747_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody747_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody747_17 NamedBody747_18

def NamedBody747_20 : StackLang.HolProg 64 :=
.seq NamedBody747_14 NamedBody747_19

def NamedBody747_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody747_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody747_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 747 3

def NamedBody747_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody747_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody747_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody747_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody747_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody747_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody747_30 : StackLang.HolProg 64 :=
.seq NamedBody747_28 NamedBody747_29

def NamedBody747_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody747_32 : StackLang.HolProg 64 :=
.seq NamedBody747_30 NamedBody747_31

def NamedBody747_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody747_34 : StackLang.HolProg 64 :=
.seq NamedBody747_32 NamedBody747_33

def NamedBody747_35 : StackLang.HolProg 64 :=
.seq NamedBody747_27 NamedBody747_34

def NamedBody747_36 : StackLang.HolProg 64 :=
.seq NamedBody747_26 NamedBody747_35

def NamedBody747_37 : StackLang.HolProg 64 :=
.seq NamedBody747_25 NamedBody747_36

def NamedBody747_38 : StackLang.HolProg 64 :=
.seq NamedBody747_24 NamedBody747_37

def NamedBody747_39 : StackLang.HolProg 64 :=
.seq NamedBody747_23 NamedBody747_38

def NamedBody747_40 : StackLang.HolProg 64 :=
.seq NamedBody747_22 NamedBody747_39

def NamedBody747_41 : StackLang.HolProg 64 :=
.seq NamedBody747_21 NamedBody747_40

def NamedBody747_42 : StackLang.HolProg 64 :=
.seq NamedBody747_20 NamedBody747_41

def NamedBody747_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody747_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody747_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody747_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody747_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody747_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody747_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody747_50 : StackLang.HolProg 64 :=
.seq NamedBody747_48 NamedBody747_49

def NamedBody747_51 : StackLang.HolProg 64 :=
.seq NamedBody747_47 NamedBody747_50

def NamedBody747_52 : StackLang.HolProg 64 :=
.seq NamedBody747_46 NamedBody747_51

def NamedBody747_53 : StackLang.HolProg 64 :=
.seq NamedBody747_45 NamedBody747_52

def NamedBody747_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody747_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody747_56 : StackLang.HolProg 64 :=
.seq NamedBody747_54 NamedBody747_55

def NamedBody747_57 : StackLang.HolProg 64 :=
.call (some (NamedBody747_53, 1, 747, 2)) (Sum.inl 78) (some (NamedBody747_56, 747, 3))

def NamedBody747_58 : StackLang.HolProg 64 :=
.seq NamedBody747_44 NamedBody747_57

def NamedBody747_59 : StackLang.HolProg 64 :=
.seq NamedBody747_43 NamedBody747_58

def NamedBody747_60 : StackLang.HolProg 64 :=
.seq NamedBody747_42 NamedBody747_59

def NamedBody747_61 : StackLang.HolProg 64 :=
.seq NamedBody747_13 NamedBody747_60

def NamedBody747_62 : StackLang.HolProg 64 :=
.seq NamedBody747_10 NamedBody747_61

def NamedBody747_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody747_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody747_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody747_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody747_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody747_68 : StackLang.HolProg 64 :=
.seq NamedBody747_66 NamedBody747_67

def NamedBody747_69 : StackLang.HolProg 64 :=
.seq NamedBody747_65 NamedBody747_68

def NamedBody747_70 : StackLang.HolProg 64 :=
.seq NamedBody747_64 NamedBody747_69

def NamedBody747_71 : StackLang.HolProg 64 :=
.seq NamedBody747_63 NamedBody747_70

def NamedBody747_72 : StackLang.HolProg 64 :=
.seq NamedBody747_62 NamedBody747_71

def NamedBody747_73 : StackLang.HolProg 64 :=
.seq NamedBody747_9 NamedBody747_72

def NamedBody747_74 : StackLang.HolProg 64 :=
.seq NamedBody747_8 NamedBody747_73

def NamedBody747_75 : StackLang.HolProg 64 :=
.seq NamedBody747_7 NamedBody747_74

def NamedBody747_76 : StackLang.HolProg 64 :=
.seq NamedBody747_6 NamedBody747_75

def Named747 : Nat × StackLang.HolProg 64 := (747, NamedBody747_76)
theorem Named747_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed747 = Named747 := by
  kernel_rfl
#print axioms Named747_eq
end InitECandidate.Proofs.BackendStages
