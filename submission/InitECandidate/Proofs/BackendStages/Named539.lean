import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed539
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody539_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody539_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody539_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody539_3 : StackLang.HolProg 64 :=
.seq NamedBody539_1 NamedBody539_2

def NamedBody539_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody539_3 NamedBody539_4

def NamedBody539_6 : StackLang.HolProg 64 :=
.seq NamedBody539_0 NamedBody539_5

def NamedBody539_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody539_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody539_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody539_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody539_11 : StackLang.HolProg 64 :=
.seq NamedBody539_9 NamedBody539_10

def NamedBody539_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1787#64)

def NamedBody539_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody539_15 : StackLang.HolProg 64 :=
.seq NamedBody539_13 NamedBody539_14

def NamedBody539_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody539_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody539_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody539_19 : StackLang.HolProg 64 :=
.seq NamedBody539_17 NamedBody539_18

def NamedBody539_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody539_19 NamedBody539_20

def NamedBody539_22 : StackLang.HolProg 64 :=
.seq NamedBody539_16 NamedBody539_21

def NamedBody539_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody539_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody539_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 539 3

def NamedBody539_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody539_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody539_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody539_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody539_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody539_32 : StackLang.HolProg 64 :=
.seq NamedBody539_30 NamedBody539_31

def NamedBody539_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody539_34 : StackLang.HolProg 64 :=
.seq NamedBody539_32 NamedBody539_33

def NamedBody539_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody539_36 : StackLang.HolProg 64 :=
.seq NamedBody539_34 NamedBody539_35

def NamedBody539_37 : StackLang.HolProg 64 :=
.seq NamedBody539_29 NamedBody539_36

def NamedBody539_38 : StackLang.HolProg 64 :=
.seq NamedBody539_28 NamedBody539_37

def NamedBody539_39 : StackLang.HolProg 64 :=
.seq NamedBody539_27 NamedBody539_38

def NamedBody539_40 : StackLang.HolProg 64 :=
.seq NamedBody539_26 NamedBody539_39

def NamedBody539_41 : StackLang.HolProg 64 :=
.seq NamedBody539_25 NamedBody539_40

def NamedBody539_42 : StackLang.HolProg 64 :=
.seq NamedBody539_24 NamedBody539_41

def NamedBody539_43 : StackLang.HolProg 64 :=
.seq NamedBody539_23 NamedBody539_42

def NamedBody539_44 : StackLang.HolProg 64 :=
.seq NamedBody539_22 NamedBody539_43

def NamedBody539_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody539_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody539_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody539_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody539_52 : StackLang.HolProg 64 :=
.seq NamedBody539_50 NamedBody539_51

def NamedBody539_53 : StackLang.HolProg 64 :=
.seq NamedBody539_49 NamedBody539_52

def NamedBody539_54 : StackLang.HolProg 64 :=
.seq NamedBody539_48 NamedBody539_53

def NamedBody539_55 : StackLang.HolProg 64 :=
.seq NamedBody539_47 NamedBody539_54

def NamedBody539_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody539_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody539_58 : StackLang.HolProg 64 :=
.seq NamedBody539_56 NamedBody539_57

def NamedBody539_59 : StackLang.HolProg 64 :=
.call (some (NamedBody539_55, 1, 539, 2)) (Sum.inl 470) (some (NamedBody539_58, 539, 3))

def NamedBody539_60 : StackLang.HolProg 64 :=
.seq NamedBody539_46 NamedBody539_59

def NamedBody539_61 : StackLang.HolProg 64 :=
.seq NamedBody539_45 NamedBody539_60

def NamedBody539_62 : StackLang.HolProg 64 :=
.seq NamedBody539_44 NamedBody539_61

def NamedBody539_63 : StackLang.HolProg 64 :=
.seq NamedBody539_15 NamedBody539_62

def NamedBody539_64 : StackLang.HolProg 64 :=
.seq NamedBody539_12 NamedBody539_63

def NamedBody539_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody539_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody539_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody539_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody539_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody539_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody539_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody539_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def NamedBody539_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody539_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody539_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_78 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody539_79 : StackLang.HolProg 64 :=
.seq NamedBody539_77 NamedBody539_78

def NamedBody539_80 : StackLang.HolProg 64 :=
.seq NamedBody539_76 NamedBody539_79

def NamedBody539_81 : StackLang.HolProg 64 :=
.seq NamedBody539_75 NamedBody539_80

def NamedBody539_82 : StackLang.HolProg 64 :=
.seq NamedBody539_74 NamedBody539_81

def NamedBody539_83 : StackLang.HolProg 64 :=
.seq NamedBody539_73 NamedBody539_82

def NamedBody539_84 : StackLang.HolProg 64 :=
.seq NamedBody539_72 NamedBody539_83

def NamedBody539_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody539_84 NamedBody539_85

def NamedBody539_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody539_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody539_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody539_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1788#64)

def NamedBody539_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody539_95 : StackLang.HolProg 64 :=
.seq NamedBody539_93 NamedBody539_94

def NamedBody539_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody539_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody539_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody539_99 : StackLang.HolProg 64 :=
.seq NamedBody539_97 NamedBody539_98

def NamedBody539_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_101 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody539_99 NamedBody539_100

def NamedBody539_102 : StackLang.HolProg 64 :=
.seq NamedBody539_96 NamedBody539_101

def NamedBody539_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody539_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody539_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 539 5

def NamedBody539_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody539_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody539_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody539_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody539_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody539_112 : StackLang.HolProg 64 :=
.seq NamedBody539_110 NamedBody539_111

def NamedBody539_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody539_114 : StackLang.HolProg 64 :=
.seq NamedBody539_112 NamedBody539_113

def NamedBody539_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody539_116 : StackLang.HolProg 64 :=
.seq NamedBody539_114 NamedBody539_115

def NamedBody539_117 : StackLang.HolProg 64 :=
.seq NamedBody539_109 NamedBody539_116

def NamedBody539_118 : StackLang.HolProg 64 :=
.seq NamedBody539_108 NamedBody539_117

def NamedBody539_119 : StackLang.HolProg 64 :=
.seq NamedBody539_107 NamedBody539_118

def NamedBody539_120 : StackLang.HolProg 64 :=
.seq NamedBody539_106 NamedBody539_119

def NamedBody539_121 : StackLang.HolProg 64 :=
.seq NamedBody539_105 NamedBody539_120

def NamedBody539_122 : StackLang.HolProg 64 :=
.seq NamedBody539_104 NamedBody539_121

def NamedBody539_123 : StackLang.HolProg 64 :=
.seq NamedBody539_103 NamedBody539_122

def NamedBody539_124 : StackLang.HolProg 64 :=
.seq NamedBody539_102 NamedBody539_123

def NamedBody539_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody539_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody539_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody539_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_132 : StackLang.HolProg 64 :=
.seq NamedBody539_130 NamedBody539_131

def NamedBody539_133 : StackLang.HolProg 64 :=
.seq NamedBody539_129 NamedBody539_132

def NamedBody539_134 : StackLang.HolProg 64 :=
.seq NamedBody539_128 NamedBody539_133

def NamedBody539_135 : StackLang.HolProg 64 :=
.seq NamedBody539_127 NamedBody539_134

def NamedBody539_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody539_138 : StackLang.HolProg 64 :=
.seq NamedBody539_136 NamedBody539_137

def NamedBody539_139 : StackLang.HolProg 64 :=
.call (some (NamedBody539_135, 1, 539, 4)) (Sum.inl 538) (some (NamedBody539_138, 539, 5))

def NamedBody539_140 : StackLang.HolProg 64 :=
.seq NamedBody539_126 NamedBody539_139

def NamedBody539_141 : StackLang.HolProg 64 :=
.seq NamedBody539_125 NamedBody539_140

def NamedBody539_142 : StackLang.HolProg 64 :=
.seq NamedBody539_124 NamedBody539_141

def NamedBody539_143 : StackLang.HolProg 64 :=
.seq NamedBody539_95 NamedBody539_142

def NamedBody539_144 : StackLang.HolProg 64 :=
.seq NamedBody539_92 NamedBody539_143

def NamedBody539_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody539_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody539_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1789#64)

def NamedBody539_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody539_151 : StackLang.HolProg 64 :=
.seq NamedBody539_149 NamedBody539_150

def NamedBody539_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody539_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody539_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody539_155 : StackLang.HolProg 64 :=
.seq NamedBody539_153 NamedBody539_154

def NamedBody539_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_157 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody539_155 NamedBody539_156

def NamedBody539_158 : StackLang.HolProg 64 :=
.seq NamedBody539_152 NamedBody539_157

def NamedBody539_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody539_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody539_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 539 7

def NamedBody539_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody539_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody539_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody539_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody539_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody539_168 : StackLang.HolProg 64 :=
.seq NamedBody539_166 NamedBody539_167

def NamedBody539_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody539_170 : StackLang.HolProg 64 :=
.seq NamedBody539_168 NamedBody539_169

def NamedBody539_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody539_172 : StackLang.HolProg 64 :=
.seq NamedBody539_170 NamedBody539_171

def NamedBody539_173 : StackLang.HolProg 64 :=
.seq NamedBody539_165 NamedBody539_172

def NamedBody539_174 : StackLang.HolProg 64 :=
.seq NamedBody539_164 NamedBody539_173

def NamedBody539_175 : StackLang.HolProg 64 :=
.seq NamedBody539_163 NamedBody539_174

def NamedBody539_176 : StackLang.HolProg 64 :=
.seq NamedBody539_162 NamedBody539_175

def NamedBody539_177 : StackLang.HolProg 64 :=
.seq NamedBody539_161 NamedBody539_176

def NamedBody539_178 : StackLang.HolProg 64 :=
.seq NamedBody539_160 NamedBody539_177

def NamedBody539_179 : StackLang.HolProg 64 :=
.seq NamedBody539_159 NamedBody539_178

def NamedBody539_180 : StackLang.HolProg 64 :=
.seq NamedBody539_158 NamedBody539_179

def NamedBody539_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody539_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody539_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody539_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody539_188 : StackLang.HolProg 64 :=
.seq NamedBody539_186 NamedBody539_187

def NamedBody539_189 : StackLang.HolProg 64 :=
.seq NamedBody539_185 NamedBody539_188

def NamedBody539_190 : StackLang.HolProg 64 :=
.seq NamedBody539_184 NamedBody539_189

def NamedBody539_191 : StackLang.HolProg 64 :=
.seq NamedBody539_183 NamedBody539_190

def NamedBody539_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody539_193 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody539_194 : StackLang.HolProg 64 :=
.seq NamedBody539_192 NamedBody539_193

def NamedBody539_195 : StackLang.HolProg 64 :=
.call (some (NamedBody539_191, 1, 539, 6)) (Sum.inl 490) (some (NamedBody539_194, 539, 7))

def NamedBody539_196 : StackLang.HolProg 64 :=
.seq NamedBody539_182 NamedBody539_195

def NamedBody539_197 : StackLang.HolProg 64 :=
.seq NamedBody539_181 NamedBody539_196

def NamedBody539_198 : StackLang.HolProg 64 :=
.seq NamedBody539_180 NamedBody539_197

def NamedBody539_199 : StackLang.HolProg 64 :=
.seq NamedBody539_151 NamedBody539_198

def NamedBody539_200 : StackLang.HolProg 64 :=
.seq NamedBody539_148 NamedBody539_199

def NamedBody539_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody539_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody539_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody539_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody539_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody539_206 : StackLang.HolProg 64 :=
.seq NamedBody539_204 NamedBody539_205

def NamedBody539_207 : StackLang.HolProg 64 :=
.seq NamedBody539_203 NamedBody539_206

def NamedBody539_208 : StackLang.HolProg 64 :=
.seq NamedBody539_202 NamedBody539_207

def NamedBody539_209 : StackLang.HolProg 64 :=
.seq NamedBody539_201 NamedBody539_208

def NamedBody539_210 : StackLang.HolProg 64 :=
.seq NamedBody539_200 NamedBody539_209

def NamedBody539_211 : StackLang.HolProg 64 :=
.seq NamedBody539_147 NamedBody539_210

def NamedBody539_212 : StackLang.HolProg 64 :=
.seq NamedBody539_146 NamedBody539_211

def NamedBody539_213 : StackLang.HolProg 64 :=
.seq NamedBody539_145 NamedBody539_212

def NamedBody539_214 : StackLang.HolProg 64 :=
.seq NamedBody539_144 NamedBody539_213

def NamedBody539_215 : StackLang.HolProg 64 :=
.seq NamedBody539_91 NamedBody539_214

def NamedBody539_216 : StackLang.HolProg 64 :=
.seq NamedBody539_90 NamedBody539_215

def NamedBody539_217 : StackLang.HolProg 64 :=
.seq NamedBody539_89 NamedBody539_216

def NamedBody539_218 : StackLang.HolProg 64 :=
.seq NamedBody539_88 NamedBody539_217

def NamedBody539_219 : StackLang.HolProg 64 :=
.seq NamedBody539_87 NamedBody539_218

def NamedBody539_220 : StackLang.HolProg 64 :=
.seq NamedBody539_86 NamedBody539_219

def NamedBody539_221 : StackLang.HolProg 64 :=
.seq NamedBody539_71 NamedBody539_220

def NamedBody539_222 : StackLang.HolProg 64 :=
.seq NamedBody539_70 NamedBody539_221

def NamedBody539_223 : StackLang.HolProg 64 :=
.seq NamedBody539_69 NamedBody539_222

def NamedBody539_224 : StackLang.HolProg 64 :=
.seq NamedBody539_68 NamedBody539_223

def NamedBody539_225 : StackLang.HolProg 64 :=
.seq NamedBody539_67 NamedBody539_224

def NamedBody539_226 : StackLang.HolProg 64 :=
.seq NamedBody539_66 NamedBody539_225

def NamedBody539_227 : StackLang.HolProg 64 :=
.seq NamedBody539_65 NamedBody539_226

def NamedBody539_228 : StackLang.HolProg 64 :=
.seq NamedBody539_64 NamedBody539_227

def NamedBody539_229 : StackLang.HolProg 64 :=
.seq NamedBody539_11 NamedBody539_228

def NamedBody539_230 : StackLang.HolProg 64 :=
.seq NamedBody539_8 NamedBody539_229

def NamedBody539_231 : StackLang.HolProg 64 :=
.seq NamedBody539_7 NamedBody539_230

def NamedBody539_232 : StackLang.HolProg 64 :=
.seq NamedBody539_6 NamedBody539_231

def Named539 : Nat × StackLang.HolProg 64 := (539, NamedBody539_232)
theorem Named539_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed539 = Named539 := by
  kernel_rfl
#print axioms Named539_eq
end InitECandidate.Proofs.BackendStages
