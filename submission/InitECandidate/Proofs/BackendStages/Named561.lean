import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed561
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody561_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody561_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody561_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody561_3 : StackLang.HolProg 64 :=
.seq NamedBody561_1 NamedBody561_2

def NamedBody561_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody561_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody561_3 NamedBody561_4

def NamedBody561_6 : StackLang.HolProg 64 :=
.seq NamedBody561_0 NamedBody561_5

def NamedBody561_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody561_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody561_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody561_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody561_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody561_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 112#64))

def NamedBody561_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody561_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 88#64))

def NamedBody561_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody561_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 96#64))

def NamedBody561_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody561_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody561_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody561_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1924#64)

def NamedBody561_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody561_22 : StackLang.HolProg 64 :=
.seq NamedBody561_20 NamedBody561_21

def NamedBody561_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody561_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody561_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody561_26 : StackLang.HolProg 64 :=
.seq NamedBody561_24 NamedBody561_25

def NamedBody561_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody561_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody561_26 NamedBody561_27

def NamedBody561_29 : StackLang.HolProg 64 :=
.seq NamedBody561_23 NamedBody561_28

def NamedBody561_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody561_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody561_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 561 3

def NamedBody561_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody561_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody561_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody561_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody561_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody561_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody561_39 : StackLang.HolProg 64 :=
.seq NamedBody561_37 NamedBody561_38

def NamedBody561_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody561_41 : StackLang.HolProg 64 :=
.seq NamedBody561_39 NamedBody561_40

def NamedBody561_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody561_43 : StackLang.HolProg 64 :=
.seq NamedBody561_41 NamedBody561_42

def NamedBody561_44 : StackLang.HolProg 64 :=
.seq NamedBody561_36 NamedBody561_43

def NamedBody561_45 : StackLang.HolProg 64 :=
.seq NamedBody561_35 NamedBody561_44

def NamedBody561_46 : StackLang.HolProg 64 :=
.seq NamedBody561_34 NamedBody561_45

def NamedBody561_47 : StackLang.HolProg 64 :=
.seq NamedBody561_33 NamedBody561_46

def NamedBody561_48 : StackLang.HolProg 64 :=
.seq NamedBody561_32 NamedBody561_47

def NamedBody561_49 : StackLang.HolProg 64 :=
.seq NamedBody561_31 NamedBody561_48

def NamedBody561_50 : StackLang.HolProg 64 :=
.seq NamedBody561_30 NamedBody561_49

def NamedBody561_51 : StackLang.HolProg 64 :=
.seq NamedBody561_29 NamedBody561_50

def NamedBody561_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody561_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody561_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody561_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody561_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody561_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody561_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody561_59 : StackLang.HolProg 64 :=
.seq NamedBody561_57 NamedBody561_58

def NamedBody561_60 : StackLang.HolProg 64 :=
.seq NamedBody561_56 NamedBody561_59

def NamedBody561_61 : StackLang.HolProg 64 :=
.seq NamedBody561_55 NamedBody561_60

def NamedBody561_62 : StackLang.HolProg 64 :=
.seq NamedBody561_54 NamedBody561_61

def NamedBody561_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody561_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody561_65 : StackLang.HolProg 64 :=
.seq NamedBody561_63 NamedBody561_64

def NamedBody561_66 : StackLang.HolProg 64 :=
.call (some (NamedBody561_62, 1, 561, 2)) (Sum.inl 560) (some (NamedBody561_65, 561, 3))

def NamedBody561_67 : StackLang.HolProg 64 :=
.seq NamedBody561_53 NamedBody561_66

def NamedBody561_68 : StackLang.HolProg 64 :=
.seq NamedBody561_52 NamedBody561_67

def NamedBody561_69 : StackLang.HolProg 64 :=
.seq NamedBody561_51 NamedBody561_68

def NamedBody561_70 : StackLang.HolProg 64 :=
.seq NamedBody561_22 NamedBody561_69

def NamedBody561_71 : StackLang.HolProg 64 :=
.seq NamedBody561_19 NamedBody561_70

def NamedBody561_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody561_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody561_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody561_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody561_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody561_77 : StackLang.HolProg 64 :=
.seq NamedBody561_75 NamedBody561_76

def NamedBody561_78 : StackLang.HolProg 64 :=
.seq NamedBody561_74 NamedBody561_77

def NamedBody561_79 : StackLang.HolProg 64 :=
.seq NamedBody561_73 NamedBody561_78

def NamedBody561_80 : StackLang.HolProg 64 :=
.seq NamedBody561_72 NamedBody561_79

def NamedBody561_81 : StackLang.HolProg 64 :=
.seq NamedBody561_71 NamedBody561_80

def NamedBody561_82 : StackLang.HolProg 64 :=
.seq NamedBody561_18 NamedBody561_81

def NamedBody561_83 : StackLang.HolProg 64 :=
.seq NamedBody561_17 NamedBody561_82

def NamedBody561_84 : StackLang.HolProg 64 :=
.seq NamedBody561_16 NamedBody561_83

def NamedBody561_85 : StackLang.HolProg 64 :=
.seq NamedBody561_15 NamedBody561_84

def NamedBody561_86 : StackLang.HolProg 64 :=
.seq NamedBody561_14 NamedBody561_85

def NamedBody561_87 : StackLang.HolProg 64 :=
.seq NamedBody561_13 NamedBody561_86

def NamedBody561_88 : StackLang.HolProg 64 :=
.seq NamedBody561_12 NamedBody561_87

def NamedBody561_89 : StackLang.HolProg 64 :=
.seq NamedBody561_11 NamedBody561_88

def NamedBody561_90 : StackLang.HolProg 64 :=
.seq NamedBody561_10 NamedBody561_89

def NamedBody561_91 : StackLang.HolProg 64 :=
.seq NamedBody561_9 NamedBody561_90

def NamedBody561_92 : StackLang.HolProg 64 :=
.seq NamedBody561_8 NamedBody561_91

def NamedBody561_93 : StackLang.HolProg 64 :=
.seq NamedBody561_7 NamedBody561_92

def NamedBody561_94 : StackLang.HolProg 64 :=
.seq NamedBody561_6 NamedBody561_93

def Named561 : Nat × StackLang.HolProg 64 := (561, NamedBody561_94)
theorem Named561_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed561 = Named561 := by
  kernel_rfl
#print axioms Named561_eq
end InitECandidate.Proofs.BackendStages
