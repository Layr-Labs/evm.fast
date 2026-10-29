import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed87
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody87_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody87_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody87_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody87_3 : StackLang.HolProg 64 :=
.seq NamedBody87_1 NamedBody87_2

def NamedBody87_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody87_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody87_3 NamedBody87_4

def NamedBody87_6 : StackLang.HolProg 64 :=
.seq NamedBody87_0 NamedBody87_5

def NamedBody87_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody87_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody87_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody87_10 : StackLang.HolProg 64 :=
.seq NamedBody87_8 NamedBody87_9

def NamedBody87_11 : StackLang.HolProg 64 :=
.seq NamedBody87_7 NamedBody87_10

def NamedBody87_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody87_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 33#64)

def NamedBody87_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody87_15 : StackLang.HolProg 64 :=
.seq NamedBody87_13 NamedBody87_14

def NamedBody87_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody87_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody87_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody87_19 : StackLang.HolProg 64 :=
.seq NamedBody87_17 NamedBody87_18

def NamedBody87_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody87_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody87_19 NamedBody87_20

def NamedBody87_22 : StackLang.HolProg 64 :=
.seq NamedBody87_16 NamedBody87_21

def NamedBody87_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody87_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody87_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 87 3

def NamedBody87_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody87_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody87_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody87_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody87_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody87_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody87_32 : StackLang.HolProg 64 :=
.seq NamedBody87_30 NamedBody87_31

def NamedBody87_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody87_34 : StackLang.HolProg 64 :=
.seq NamedBody87_32 NamedBody87_33

def NamedBody87_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody87_36 : StackLang.HolProg 64 :=
.seq NamedBody87_34 NamedBody87_35

def NamedBody87_37 : StackLang.HolProg 64 :=
.seq NamedBody87_29 NamedBody87_36

def NamedBody87_38 : StackLang.HolProg 64 :=
.seq NamedBody87_28 NamedBody87_37

def NamedBody87_39 : StackLang.HolProg 64 :=
.seq NamedBody87_27 NamedBody87_38

def NamedBody87_40 : StackLang.HolProg 64 :=
.seq NamedBody87_26 NamedBody87_39

def NamedBody87_41 : StackLang.HolProg 64 :=
.seq NamedBody87_25 NamedBody87_40

def NamedBody87_42 : StackLang.HolProg 64 :=
.seq NamedBody87_24 NamedBody87_41

def NamedBody87_43 : StackLang.HolProg 64 :=
.seq NamedBody87_23 NamedBody87_42

def NamedBody87_44 : StackLang.HolProg 64 :=
.seq NamedBody87_22 NamedBody87_43

def NamedBody87_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody87_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody87_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody87_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody87_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody87_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody87_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody87_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody87_53 : StackLang.HolProg 64 :=
.seq NamedBody87_51 NamedBody87_52

def NamedBody87_54 : StackLang.HolProg 64 :=
.seq NamedBody87_50 NamedBody87_53

def NamedBody87_55 : StackLang.HolProg 64 :=
.seq NamedBody87_49 NamedBody87_54

def NamedBody87_56 : StackLang.HolProg 64 :=
.seq NamedBody87_48 NamedBody87_55

def NamedBody87_57 : StackLang.HolProg 64 :=
.seq NamedBody87_47 NamedBody87_56

def NamedBody87_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody87_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody87_60 : StackLang.HolProg 64 :=
.seq NamedBody87_58 NamedBody87_59

def NamedBody87_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody87_62 : StackLang.HolProg 64 :=
.seq NamedBody87_60 NamedBody87_61

def NamedBody87_63 : StackLang.HolProg 64 :=
.call (some (NamedBody87_57, 1, 87, 2)) (Sum.inl 86) (some (NamedBody87_62, 87, 3))

def NamedBody87_64 : StackLang.HolProg 64 :=
.seq NamedBody87_46 NamedBody87_63

def NamedBody87_65 : StackLang.HolProg 64 :=
.seq NamedBody87_45 NamedBody87_64

def NamedBody87_66 : StackLang.HolProg 64 :=
.seq NamedBody87_44 NamedBody87_65

def NamedBody87_67 : StackLang.HolProg 64 :=
.seq NamedBody87_15 NamedBody87_66

def NamedBody87_68 : StackLang.HolProg 64 :=
.seq NamedBody87_12 NamedBody87_67

def NamedBody87_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody87_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody87_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody87_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody87_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody87_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody87_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody87_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 34#64)

def NamedBody87_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody87_78 : StackLang.HolProg 64 :=
.seq NamedBody87_76 NamedBody87_77

def NamedBody87_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody87_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody87_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody87_82 : StackLang.HolProg 64 :=
.seq NamedBody87_80 NamedBody87_81

def NamedBody87_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody87_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody87_82 NamedBody87_83

def NamedBody87_85 : StackLang.HolProg 64 :=
.seq NamedBody87_79 NamedBody87_84

def NamedBody87_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody87_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody87_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 87 5

def NamedBody87_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody87_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody87_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody87_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody87_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody87_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody87_95 : StackLang.HolProg 64 :=
.seq NamedBody87_93 NamedBody87_94

def NamedBody87_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody87_97 : StackLang.HolProg 64 :=
.seq NamedBody87_95 NamedBody87_96

def NamedBody87_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody87_99 : StackLang.HolProg 64 :=
.seq NamedBody87_97 NamedBody87_98

def NamedBody87_100 : StackLang.HolProg 64 :=
.seq NamedBody87_92 NamedBody87_99

def NamedBody87_101 : StackLang.HolProg 64 :=
.seq NamedBody87_91 NamedBody87_100

def NamedBody87_102 : StackLang.HolProg 64 :=
.seq NamedBody87_90 NamedBody87_101

def NamedBody87_103 : StackLang.HolProg 64 :=
.seq NamedBody87_89 NamedBody87_102

def NamedBody87_104 : StackLang.HolProg 64 :=
.seq NamedBody87_88 NamedBody87_103

def NamedBody87_105 : StackLang.HolProg 64 :=
.seq NamedBody87_87 NamedBody87_104

def NamedBody87_106 : StackLang.HolProg 64 :=
.seq NamedBody87_86 NamedBody87_105

def NamedBody87_107 : StackLang.HolProg 64 :=
.seq NamedBody87_85 NamedBody87_106

def NamedBody87_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody87_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody87_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody87_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody87_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody87_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody87_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody87_115 : StackLang.HolProg 64 :=
.seq NamedBody87_113 NamedBody87_114

def NamedBody87_116 : StackLang.HolProg 64 :=
.seq NamedBody87_112 NamedBody87_115

def NamedBody87_117 : StackLang.HolProg 64 :=
.seq NamedBody87_111 NamedBody87_116

def NamedBody87_118 : StackLang.HolProg 64 :=
.seq NamedBody87_110 NamedBody87_117

def NamedBody87_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody87_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody87_121 : StackLang.HolProg 64 :=
.seq NamedBody87_119 NamedBody87_120

def NamedBody87_122 : StackLang.HolProg 64 :=
.call (some (NamedBody87_118, 1, 87, 4)) (Sum.inl 86) (some (NamedBody87_121, 87, 5))

def NamedBody87_123 : StackLang.HolProg 64 :=
.seq NamedBody87_109 NamedBody87_122

def NamedBody87_124 : StackLang.HolProg 64 :=
.seq NamedBody87_108 NamedBody87_123

def NamedBody87_125 : StackLang.HolProg 64 :=
.seq NamedBody87_107 NamedBody87_124

def NamedBody87_126 : StackLang.HolProg 64 :=
.seq NamedBody87_78 NamedBody87_125

def NamedBody87_127 : StackLang.HolProg 64 :=
.seq NamedBody87_75 NamedBody87_126

def NamedBody87_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody87_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody87_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody87_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody87_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody87_133 : StackLang.HolProg 64 :=
.seq NamedBody87_131 NamedBody87_132

def NamedBody87_134 : StackLang.HolProg 64 :=
.seq NamedBody87_130 NamedBody87_133

def NamedBody87_135 : StackLang.HolProg 64 :=
.seq NamedBody87_129 NamedBody87_134

def NamedBody87_136 : StackLang.HolProg 64 :=
.seq NamedBody87_128 NamedBody87_135

def NamedBody87_137 : StackLang.HolProg 64 :=
.seq NamedBody87_127 NamedBody87_136

def NamedBody87_138 : StackLang.HolProg 64 :=
.seq NamedBody87_74 NamedBody87_137

def NamedBody87_139 : StackLang.HolProg 64 :=
.seq NamedBody87_73 NamedBody87_138

def NamedBody87_140 : StackLang.HolProg 64 :=
.seq NamedBody87_72 NamedBody87_139

def NamedBody87_141 : StackLang.HolProg 64 :=
.seq NamedBody87_71 NamedBody87_140

def NamedBody87_142 : StackLang.HolProg 64 :=
.seq NamedBody87_70 NamedBody87_141

def NamedBody87_143 : StackLang.HolProg 64 :=
.seq NamedBody87_69 NamedBody87_142

def NamedBody87_144 : StackLang.HolProg 64 :=
.seq NamedBody87_68 NamedBody87_143

def NamedBody87_145 : StackLang.HolProg 64 :=
.seq NamedBody87_11 NamedBody87_144

def NamedBody87_146 : StackLang.HolProg 64 :=
.seq NamedBody87_6 NamedBody87_145

def Named87 : Nat × StackLang.HolProg 64 := (87, NamedBody87_146)
theorem Named87_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed87 = Named87 := by
  kernel_rfl
#print axioms Named87_eq
end InitECandidate.Proofs.BackendStages
