import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed838
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody838_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody838_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody838_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody838_3 : StackLang.HolProg 64 :=
.seq NamedBody838_1 NamedBody838_2

def NamedBody838_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody838_3 NamedBody838_4

def NamedBody838_6 : StackLang.HolProg 64 :=
.seq NamedBody838_0 NamedBody838_5

def NamedBody838_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody838_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody838_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody838_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody838_11 : StackLang.HolProg 64 :=
.seq NamedBody838_9 NamedBody838_10

def NamedBody838_12 : StackLang.HolProg 64 :=
.seq NamedBody838_8 NamedBody838_11

def NamedBody838_13 : StackLang.HolProg 64 :=
.seq NamedBody838_7 NamedBody838_12

def NamedBody838_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4199#64)

def NamedBody838_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody838_17 : StackLang.HolProg 64 :=
.seq NamedBody838_15 NamedBody838_16

def NamedBody838_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody838_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody838_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody838_21 : StackLang.HolProg 64 :=
.seq NamedBody838_19 NamedBody838_20

def NamedBody838_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody838_21 NamedBody838_22

def NamedBody838_24 : StackLang.HolProg 64 :=
.seq NamedBody838_18 NamedBody838_23

def NamedBody838_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody838_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody838_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 838 3

def NamedBody838_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody838_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody838_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody838_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody838_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody838_34 : StackLang.HolProg 64 :=
.seq NamedBody838_32 NamedBody838_33

def NamedBody838_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody838_36 : StackLang.HolProg 64 :=
.seq NamedBody838_34 NamedBody838_35

def NamedBody838_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody838_38 : StackLang.HolProg 64 :=
.seq NamedBody838_36 NamedBody838_37

def NamedBody838_39 : StackLang.HolProg 64 :=
.seq NamedBody838_31 NamedBody838_38

def NamedBody838_40 : StackLang.HolProg 64 :=
.seq NamedBody838_30 NamedBody838_39

def NamedBody838_41 : StackLang.HolProg 64 :=
.seq NamedBody838_29 NamedBody838_40

def NamedBody838_42 : StackLang.HolProg 64 :=
.seq NamedBody838_28 NamedBody838_41

def NamedBody838_43 : StackLang.HolProg 64 :=
.seq NamedBody838_27 NamedBody838_42

def NamedBody838_44 : StackLang.HolProg 64 :=
.seq NamedBody838_26 NamedBody838_43

def NamedBody838_45 : StackLang.HolProg 64 :=
.seq NamedBody838_25 NamedBody838_44

def NamedBody838_46 : StackLang.HolProg 64 :=
.seq NamedBody838_24 NamedBody838_45

def NamedBody838_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody838_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody838_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody838_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody838_54 : StackLang.HolProg 64 :=
.seq NamedBody838_52 NamedBody838_53

def NamedBody838_55 : StackLang.HolProg 64 :=
.seq NamedBody838_51 NamedBody838_54

def NamedBody838_56 : StackLang.HolProg 64 :=
.seq NamedBody838_50 NamedBody838_55

def NamedBody838_57 : StackLang.HolProg 64 :=
.seq NamedBody838_49 NamedBody838_56

def NamedBody838_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody838_60 : StackLang.HolProg 64 :=
.seq NamedBody838_58 NamedBody838_59

def NamedBody838_61 : StackLang.HolProg 64 :=
.call (some (NamedBody838_57, 1, 838, 2)) (Sum.inl 69) (some (NamedBody838_60, 838, 3))

def NamedBody838_62 : StackLang.HolProg 64 :=
.seq NamedBody838_48 NamedBody838_61

def NamedBody838_63 : StackLang.HolProg 64 :=
.seq NamedBody838_47 NamedBody838_62

def NamedBody838_64 : StackLang.HolProg 64 :=
.seq NamedBody838_46 NamedBody838_63

def NamedBody838_65 : StackLang.HolProg 64 :=
.seq NamedBody838_17 NamedBody838_64

def NamedBody838_66 : StackLang.HolProg 64 :=
.seq NamedBody838_14 NamedBody838_65

def NamedBody838_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody838_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody838_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody838_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4200#64)

def NamedBody838_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody838_73 : StackLang.HolProg 64 :=
.seq NamedBody838_71 NamedBody838_72

def NamedBody838_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody838_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody838_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody838_77 : StackLang.HolProg 64 :=
.seq NamedBody838_75 NamedBody838_76

def NamedBody838_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody838_77 NamedBody838_78

def NamedBody838_80 : StackLang.HolProg 64 :=
.seq NamedBody838_74 NamedBody838_79

def NamedBody838_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody838_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody838_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 838 5

def NamedBody838_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody838_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody838_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody838_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody838_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody838_90 : StackLang.HolProg 64 :=
.seq NamedBody838_88 NamedBody838_89

def NamedBody838_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody838_92 : StackLang.HolProg 64 :=
.seq NamedBody838_90 NamedBody838_91

def NamedBody838_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody838_94 : StackLang.HolProg 64 :=
.seq NamedBody838_92 NamedBody838_93

def NamedBody838_95 : StackLang.HolProg 64 :=
.seq NamedBody838_87 NamedBody838_94

def NamedBody838_96 : StackLang.HolProg 64 :=
.seq NamedBody838_86 NamedBody838_95

def NamedBody838_97 : StackLang.HolProg 64 :=
.seq NamedBody838_85 NamedBody838_96

def NamedBody838_98 : StackLang.HolProg 64 :=
.seq NamedBody838_84 NamedBody838_97

def NamedBody838_99 : StackLang.HolProg 64 :=
.seq NamedBody838_83 NamedBody838_98

def NamedBody838_100 : StackLang.HolProg 64 :=
.seq NamedBody838_82 NamedBody838_99

def NamedBody838_101 : StackLang.HolProg 64 :=
.seq NamedBody838_81 NamedBody838_100

def NamedBody838_102 : StackLang.HolProg 64 :=
.seq NamedBody838_80 NamedBody838_101

def NamedBody838_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody838_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody838_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody838_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody838_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody838_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody838_112 : StackLang.HolProg 64 :=
.seq NamedBody838_110 NamedBody838_111

def NamedBody838_113 : StackLang.HolProg 64 :=
.seq NamedBody838_109 NamedBody838_112

def NamedBody838_114 : StackLang.HolProg 64 :=
.seq NamedBody838_108 NamedBody838_113

def NamedBody838_115 : StackLang.HolProg 64 :=
.seq NamedBody838_107 NamedBody838_114

def NamedBody838_116 : StackLang.HolProg 64 :=
.seq NamedBody838_106 NamedBody838_115

def NamedBody838_117 : StackLang.HolProg 64 :=
.seq NamedBody838_105 NamedBody838_116

def NamedBody838_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody838_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody838_120 : StackLang.HolProg 64 :=
.seq NamedBody838_118 NamedBody838_119

def NamedBody838_121 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody838_122 : StackLang.HolProg 64 :=
.seq NamedBody838_120 NamedBody838_121

def NamedBody838_123 : StackLang.HolProg 64 :=
.call (some (NamedBody838_117, 1, 838, 4)) (Sum.inl 68) (some (NamedBody838_122, 838, 5))

def NamedBody838_124 : StackLang.HolProg 64 :=
.seq NamedBody838_104 NamedBody838_123

def NamedBody838_125 : StackLang.HolProg 64 :=
.seq NamedBody838_103 NamedBody838_124

def NamedBody838_126 : StackLang.HolProg 64 :=
.seq NamedBody838_102 NamedBody838_125

def NamedBody838_127 : StackLang.HolProg 64 :=
.seq NamedBody838_73 NamedBody838_126

def NamedBody838_128 : StackLang.HolProg 64 :=
.seq NamedBody838_70 NamedBody838_127

def NamedBody838_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody838_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody838_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody838_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody838_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody838_134 : StackLang.HolProg 64 :=
.seq NamedBody838_132 NamedBody838_133

def NamedBody838_135 : StackLang.HolProg 64 :=
.seq NamedBody838_131 NamedBody838_134

def NamedBody838_136 : StackLang.HolProg 64 :=
.seq NamedBody838_130 NamedBody838_135

def NamedBody838_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4201#64)

def NamedBody838_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody838_140 : StackLang.HolProg 64 :=
.seq NamedBody838_138 NamedBody838_139

def NamedBody838_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody838_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody838_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody838_144 : StackLang.HolProg 64 :=
.seq NamedBody838_142 NamedBody838_143

def NamedBody838_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody838_144 NamedBody838_145

def NamedBody838_147 : StackLang.HolProg 64 :=
.seq NamedBody838_141 NamedBody838_146

def NamedBody838_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody838_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody838_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 838 7

def NamedBody838_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody838_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody838_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody838_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody838_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody838_157 : StackLang.HolProg 64 :=
.seq NamedBody838_155 NamedBody838_156

def NamedBody838_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody838_159 : StackLang.HolProg 64 :=
.seq NamedBody838_157 NamedBody838_158

def NamedBody838_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody838_161 : StackLang.HolProg 64 :=
.seq NamedBody838_159 NamedBody838_160

def NamedBody838_162 : StackLang.HolProg 64 :=
.seq NamedBody838_154 NamedBody838_161

def NamedBody838_163 : StackLang.HolProg 64 :=
.seq NamedBody838_153 NamedBody838_162

def NamedBody838_164 : StackLang.HolProg 64 :=
.seq NamedBody838_152 NamedBody838_163

def NamedBody838_165 : StackLang.HolProg 64 :=
.seq NamedBody838_151 NamedBody838_164

def NamedBody838_166 : StackLang.HolProg 64 :=
.seq NamedBody838_150 NamedBody838_165

def NamedBody838_167 : StackLang.HolProg 64 :=
.seq NamedBody838_149 NamedBody838_166

def NamedBody838_168 : StackLang.HolProg 64 :=
.seq NamedBody838_148 NamedBody838_167

def NamedBody838_169 : StackLang.HolProg 64 :=
.seq NamedBody838_147 NamedBody838_168

def NamedBody838_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody838_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody838_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody838_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody838_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody838_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody838_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody838_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody838_181 : StackLang.HolProg 64 :=
.seq NamedBody838_179 NamedBody838_180

def NamedBody838_182 : StackLang.HolProg 64 :=
.seq NamedBody838_178 NamedBody838_181

def NamedBody838_183 : StackLang.HolProg 64 :=
.seq NamedBody838_177 NamedBody838_182

def NamedBody838_184 : StackLang.HolProg 64 :=
.seq NamedBody838_176 NamedBody838_183

def NamedBody838_185 : StackLang.HolProg 64 :=
.seq NamedBody838_175 NamedBody838_184

def NamedBody838_186 : StackLang.HolProg 64 :=
.seq NamedBody838_174 NamedBody838_185

def NamedBody838_187 : StackLang.HolProg 64 :=
.seq NamedBody838_173 NamedBody838_186

def NamedBody838_188 : StackLang.HolProg 64 :=
.seq NamedBody838_172 NamedBody838_187

def NamedBody838_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody838_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody838_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody838_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody838_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody838_194 : StackLang.HolProg 64 :=
.seq NamedBody838_192 NamedBody838_193

def NamedBody838_195 : StackLang.HolProg 64 :=
.seq NamedBody838_191 NamedBody838_194

def NamedBody838_196 : StackLang.HolProg 64 :=
.seq NamedBody838_190 NamedBody838_195

def NamedBody838_197 : StackLang.HolProg 64 :=
.seq NamedBody838_189 NamedBody838_196

def NamedBody838_198 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody838_199 : StackLang.HolProg 64 :=
.seq NamedBody838_197 NamedBody838_198

def NamedBody838_200 : StackLang.HolProg 64 :=
.call (some (NamedBody838_188, 1, 838, 6)) (Sum.inl 158) (some (NamedBody838_199, 838, 7))

def NamedBody838_201 : StackLang.HolProg 64 :=
.seq NamedBody838_171 NamedBody838_200

def NamedBody838_202 : StackLang.HolProg 64 :=
.seq NamedBody838_170 NamedBody838_201

def NamedBody838_203 : StackLang.HolProg 64 :=
.seq NamedBody838_169 NamedBody838_202

def NamedBody838_204 : StackLang.HolProg 64 :=
.seq NamedBody838_140 NamedBody838_203

def NamedBody838_205 : StackLang.HolProg 64 :=
.seq NamedBody838_137 NamedBody838_204

def NamedBody838_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody838_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody838_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody838_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody838_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 6#64)

def NamedBody838_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody838_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody838_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody838_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody838_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody838_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody838_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody838_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2047#64)))

def NamedBody838_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2047#64)

def NamedBody838_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody838_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody838_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def NamedBody838_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 7#64)

def NamedBody838_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody838_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 13 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody838_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody838_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody838_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody838_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody838_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody838_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody838_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody838_245 : StackLang.HolProg 64 :=
.seq NamedBody838_243 NamedBody838_244

def NamedBody838_246 : StackLang.HolProg 64 :=
.seq NamedBody838_242 NamedBody838_245

def NamedBody838_247 : StackLang.HolProg 64 :=
.seq NamedBody838_241 NamedBody838_246

def NamedBody838_248 : StackLang.HolProg 64 :=
.seq NamedBody838_240 NamedBody838_247

def NamedBody838_249 : StackLang.HolProg 64 :=
.seq NamedBody838_239 NamedBody838_248

def NamedBody838_250 : StackLang.HolProg 64 :=
.seq NamedBody838_238 NamedBody838_249

def NamedBody838_251 : StackLang.HolProg 64 :=
.seq NamedBody838_237 NamedBody838_250

def NamedBody838_252 : StackLang.HolProg 64 :=
.seq NamedBody838_236 NamedBody838_251

def NamedBody838_253 : StackLang.HolProg 64 :=
.seq NamedBody838_235 NamedBody838_252

def NamedBody838_254 : StackLang.HolProg 64 :=
.seq NamedBody838_234 NamedBody838_253

def NamedBody838_255 : StackLang.HolProg 64 :=
.seq NamedBody838_233 NamedBody838_254

def NamedBody838_256 : StackLang.HolProg 64 :=
.seq NamedBody838_232 NamedBody838_255

def NamedBody838_257 : StackLang.HolProg 64 :=
.seq NamedBody838_231 NamedBody838_256

def NamedBody838_258 : StackLang.HolProg 64 :=
.seq NamedBody838_230 NamedBody838_257

def NamedBody838_259 : StackLang.HolProg 64 :=
.seq NamedBody838_229 NamedBody838_258

def NamedBody838_260 : StackLang.HolProg 64 :=
.seq NamedBody838_228 NamedBody838_259

def NamedBody838_261 : StackLang.HolProg 64 :=
.seq NamedBody838_227 NamedBody838_260

def NamedBody838_262 : StackLang.HolProg 64 :=
.seq NamedBody838_226 NamedBody838_261

def NamedBody838_263 : StackLang.HolProg 64 :=
.seq NamedBody838_225 NamedBody838_262

def NamedBody838_264 : StackLang.HolProg 64 :=
.seq NamedBody838_224 NamedBody838_263

def NamedBody838_265 : StackLang.HolProg 64 :=
.seq NamedBody838_223 NamedBody838_264

def NamedBody838_266 : StackLang.HolProg 64 :=
.seq NamedBody838_222 NamedBody838_265

def NamedBody838_267 : StackLang.HolProg 64 :=
.seq NamedBody838_221 NamedBody838_266

def NamedBody838_268 : StackLang.HolProg 64 :=
.seq NamedBody838_220 NamedBody838_267

def NamedBody838_269 : StackLang.HolProg 64 :=
.seq NamedBody838_219 NamedBody838_268

def NamedBody838_270 : StackLang.HolProg 64 :=
.seq NamedBody838_218 NamedBody838_269

def NamedBody838_271 : StackLang.HolProg 64 :=
.seq NamedBody838_217 NamedBody838_270

def NamedBody838_272 : StackLang.HolProg 64 :=
.seq NamedBody838_216 NamedBody838_271

def NamedBody838_273 : StackLang.HolProg 64 :=
.seq NamedBody838_215 NamedBody838_272

def NamedBody838_274 : StackLang.HolProg 64 :=
.seq NamedBody838_214 NamedBody838_273

def NamedBody838_275 : StackLang.HolProg 64 :=
.seq NamedBody838_213 NamedBody838_274

def NamedBody838_276 : StackLang.HolProg 64 :=
.seq NamedBody838_212 NamedBody838_275

def NamedBody838_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody838_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody838_279 : StackLang.HolProg 64 :=
.seq NamedBody838_277 NamedBody838_278

def NamedBody838_280 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody838_276 NamedBody838_279

def NamedBody838_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody838_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_283 : StackLang.HolProg 64 :=
.seq NamedBody838_281 NamedBody838_282

def NamedBody838_284 : StackLang.HolProg 64 :=
.seq NamedBody838_280 NamedBody838_283

def NamedBody838_285 : StackLang.HolProg 64 :=
.seq NamedBody838_211 NamedBody838_284

def NamedBody838_286 : StackLang.HolProg 64 :=
.seq NamedBody838_210 NamedBody838_285

def NamedBody838_287 : StackLang.HolProg 64 :=
.loop NamedBody838_286

def NamedBody838_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody838_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4202#64)

def NamedBody838_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody838_293 : StackLang.HolProg 64 :=
.seq NamedBody838_291 NamedBody838_292

def NamedBody838_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody838_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody838_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody838_297 : StackLang.HolProg 64 :=
.seq NamedBody838_295 NamedBody838_296

def NamedBody838_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_299 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody838_297 NamedBody838_298

def NamedBody838_300 : StackLang.HolProg 64 :=
.seq NamedBody838_294 NamedBody838_299

def NamedBody838_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody838_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody838_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 838 9

def NamedBody838_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody838_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody838_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody838_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody838_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody838_310 : StackLang.HolProg 64 :=
.seq NamedBody838_308 NamedBody838_309

def NamedBody838_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody838_312 : StackLang.HolProg 64 :=
.seq NamedBody838_310 NamedBody838_311

def NamedBody838_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody838_314 : StackLang.HolProg 64 :=
.seq NamedBody838_312 NamedBody838_313

def NamedBody838_315 : StackLang.HolProg 64 :=
.seq NamedBody838_307 NamedBody838_314

def NamedBody838_316 : StackLang.HolProg 64 :=
.seq NamedBody838_306 NamedBody838_315

def NamedBody838_317 : StackLang.HolProg 64 :=
.seq NamedBody838_305 NamedBody838_316

def NamedBody838_318 : StackLang.HolProg 64 :=
.seq NamedBody838_304 NamedBody838_317

def NamedBody838_319 : StackLang.HolProg 64 :=
.seq NamedBody838_303 NamedBody838_318

def NamedBody838_320 : StackLang.HolProg 64 :=
.seq NamedBody838_302 NamedBody838_319

def NamedBody838_321 : StackLang.HolProg 64 :=
.seq NamedBody838_301 NamedBody838_320

def NamedBody838_322 : StackLang.HolProg 64 :=
.seq NamedBody838_300 NamedBody838_321

def NamedBody838_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody838_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody838_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody838_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody838_330 : StackLang.HolProg 64 :=
.seq NamedBody838_328 NamedBody838_329

def NamedBody838_331 : StackLang.HolProg 64 :=
.seq NamedBody838_327 NamedBody838_330

def NamedBody838_332 : StackLang.HolProg 64 :=
.seq NamedBody838_326 NamedBody838_331

def NamedBody838_333 : StackLang.HolProg 64 :=
.seq NamedBody838_325 NamedBody838_332

def NamedBody838_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody838_335 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody838_336 : StackLang.HolProg 64 :=
.seq NamedBody838_334 NamedBody838_335

def NamedBody838_337 : StackLang.HolProg 64 :=
.call (some (NamedBody838_333, 1, 838, 8)) (Sum.inl 70) (some (NamedBody838_336, 838, 9))

def NamedBody838_338 : StackLang.HolProg 64 :=
.seq NamedBody838_324 NamedBody838_337

def NamedBody838_339 : StackLang.HolProg 64 :=
.seq NamedBody838_323 NamedBody838_338

def NamedBody838_340 : StackLang.HolProg 64 :=
.seq NamedBody838_322 NamedBody838_339

def NamedBody838_341 : StackLang.HolProg 64 :=
.seq NamedBody838_293 NamedBody838_340

def NamedBody838_342 : StackLang.HolProg 64 :=
.seq NamedBody838_290 NamedBody838_341

def NamedBody838_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody838_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody838_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody838_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody838_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody838_348 : StackLang.HolProg 64 :=
.seq NamedBody838_346 NamedBody838_347

def NamedBody838_349 : StackLang.HolProg 64 :=
.seq NamedBody838_345 NamedBody838_348

def NamedBody838_350 : StackLang.HolProg 64 :=
.seq NamedBody838_344 NamedBody838_349

def NamedBody838_351 : StackLang.HolProg 64 :=
.seq NamedBody838_343 NamedBody838_350

def NamedBody838_352 : StackLang.HolProg 64 :=
.seq NamedBody838_342 NamedBody838_351

def NamedBody838_353 : StackLang.HolProg 64 :=
.seq NamedBody838_289 NamedBody838_352

def NamedBody838_354 : StackLang.HolProg 64 :=
.seq NamedBody838_288 NamedBody838_353

def NamedBody838_355 : StackLang.HolProg 64 :=
.seq NamedBody838_287 NamedBody838_354

def NamedBody838_356 : StackLang.HolProg 64 :=
.seq NamedBody838_209 NamedBody838_355

def NamedBody838_357 : StackLang.HolProg 64 :=
.seq NamedBody838_208 NamedBody838_356

def NamedBody838_358 : StackLang.HolProg 64 :=
.seq NamedBody838_207 NamedBody838_357

def NamedBody838_359 : StackLang.HolProg 64 :=
.seq NamedBody838_206 NamedBody838_358

def NamedBody838_360 : StackLang.HolProg 64 :=
.seq NamedBody838_205 NamedBody838_359

def NamedBody838_361 : StackLang.HolProg 64 :=
.seq NamedBody838_136 NamedBody838_360

def NamedBody838_362 : StackLang.HolProg 64 :=
.seq NamedBody838_129 NamedBody838_361

def NamedBody838_363 : StackLang.HolProg 64 :=
.seq NamedBody838_128 NamedBody838_362

def NamedBody838_364 : StackLang.HolProg 64 :=
.seq NamedBody838_69 NamedBody838_363

def NamedBody838_365 : StackLang.HolProg 64 :=
.seq NamedBody838_68 NamedBody838_364

def NamedBody838_366 : StackLang.HolProg 64 :=
.seq NamedBody838_67 NamedBody838_365

def NamedBody838_367 : StackLang.HolProg 64 :=
.seq NamedBody838_66 NamedBody838_366

def NamedBody838_368 : StackLang.HolProg 64 :=
.seq NamedBody838_13 NamedBody838_367

def NamedBody838_369 : StackLang.HolProg 64 :=
.seq NamedBody838_6 NamedBody838_368

def Named838 : Nat × StackLang.HolProg 64 := (838, NamedBody838_369)
theorem Named838_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed838 = Named838 := by
  kernel_rfl
#print axioms Named838_eq
end InitECandidate.Proofs.BackendStages
