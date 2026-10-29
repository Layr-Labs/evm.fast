import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed829
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody829_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody829_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody829_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody829_3 : StackLang.HolProg 64 :=
.seq NamedBody829_1 NamedBody829_2

def NamedBody829_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody829_3 NamedBody829_4

def NamedBody829_6 : StackLang.HolProg 64 :=
.seq NamedBody829_0 NamedBody829_5

def NamedBody829_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 18#64)

def NamedBody829_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody829_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody829_11 : StackLang.HolProg 64 :=
.seq NamedBody829_9 NamedBody829_10

def NamedBody829_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4121#64)

def NamedBody829_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody829_15 : StackLang.HolProg 64 :=
.seq NamedBody829_13 NamedBody829_14

def NamedBody829_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody829_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody829_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody829_19 : StackLang.HolProg 64 :=
.seq NamedBody829_17 NamedBody829_18

def NamedBody829_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody829_19 NamedBody829_20

def NamedBody829_22 : StackLang.HolProg 64 :=
.seq NamedBody829_16 NamedBody829_21

def NamedBody829_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody829_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody829_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 829 3

def NamedBody829_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody829_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody829_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody829_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody829_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody829_32 : StackLang.HolProg 64 :=
.seq NamedBody829_30 NamedBody829_31

def NamedBody829_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody829_34 : StackLang.HolProg 64 :=
.seq NamedBody829_32 NamedBody829_33

def NamedBody829_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody829_36 : StackLang.HolProg 64 :=
.seq NamedBody829_34 NamedBody829_35

def NamedBody829_37 : StackLang.HolProg 64 :=
.seq NamedBody829_29 NamedBody829_36

def NamedBody829_38 : StackLang.HolProg 64 :=
.seq NamedBody829_28 NamedBody829_37

def NamedBody829_39 : StackLang.HolProg 64 :=
.seq NamedBody829_27 NamedBody829_38

def NamedBody829_40 : StackLang.HolProg 64 :=
.seq NamedBody829_26 NamedBody829_39

def NamedBody829_41 : StackLang.HolProg 64 :=
.seq NamedBody829_25 NamedBody829_40

def NamedBody829_42 : StackLang.HolProg 64 :=
.seq NamedBody829_24 NamedBody829_41

def NamedBody829_43 : StackLang.HolProg 64 :=
.seq NamedBody829_23 NamedBody829_42

def NamedBody829_44 : StackLang.HolProg 64 :=
.seq NamedBody829_22 NamedBody829_43

def NamedBody829_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody829_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody829_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody829_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody829_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody829_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody829_54 : StackLang.HolProg 64 :=
.seq NamedBody829_52 NamedBody829_53

def NamedBody829_55 : StackLang.HolProg 64 :=
.seq NamedBody829_51 NamedBody829_54

def NamedBody829_56 : StackLang.HolProg 64 :=
.seq NamedBody829_50 NamedBody829_55

def NamedBody829_57 : StackLang.HolProg 64 :=
.seq NamedBody829_49 NamedBody829_56

def NamedBody829_58 : StackLang.HolProg 64 :=
.seq NamedBody829_48 NamedBody829_57

def NamedBody829_59 : StackLang.HolProg 64 :=
.seq NamedBody829_47 NamedBody829_58

def NamedBody829_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody829_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody829_62 : StackLang.HolProg 64 :=
.seq NamedBody829_60 NamedBody829_61

def NamedBody829_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody829_64 : StackLang.HolProg 64 :=
.seq NamedBody829_62 NamedBody829_63

def NamedBody829_65 : StackLang.HolProg 64 :=
.call (some (NamedBody829_59, 1, 829, 2)) (Sum.inl 80) (some (NamedBody829_64, 829, 3))

def NamedBody829_66 : StackLang.HolProg 64 :=
.seq NamedBody829_46 NamedBody829_65

def NamedBody829_67 : StackLang.HolProg 64 :=
.seq NamedBody829_45 NamedBody829_66

def NamedBody829_68 : StackLang.HolProg 64 :=
.seq NamedBody829_44 NamedBody829_67

def NamedBody829_69 : StackLang.HolProg 64 :=
.seq NamedBody829_15 NamedBody829_68

def NamedBody829_70 : StackLang.HolProg 64 :=
.seq NamedBody829_12 NamedBody829_69

def NamedBody829_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody829_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody829_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody829_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody829_79 : StackLang.HolProg 64 :=
.seq NamedBody829_77 NamedBody829_78

def NamedBody829_80 : StackLang.HolProg 64 :=
.seq NamedBody829_76 NamedBody829_79

def NamedBody829_81 : StackLang.HolProg 64 :=
.seq NamedBody829_75 NamedBody829_80

def NamedBody829_82 : StackLang.HolProg 64 :=
.seq NamedBody829_74 NamedBody829_81

def NamedBody829_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody829_82 NamedBody829_83

def NamedBody829_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18#64)))

def NamedBody829_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody829_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 19#64)))

def NamedBody829_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody829_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody829_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody829_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 18#64)

def NamedBody829_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody829_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody829_103 : StackLang.HolProg 64 :=
.seq NamedBody829_101 NamedBody829_102

def NamedBody829_104 : StackLang.HolProg 64 :=
.seq NamedBody829_100 NamedBody829_103

def NamedBody829_105 : StackLang.HolProg 64 :=
.seq NamedBody829_99 NamedBody829_104

def NamedBody829_106 : StackLang.HolProg 64 :=
.seq NamedBody829_98 NamedBody829_105

def NamedBody829_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_108 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody829_106 NamedBody829_107

def NamedBody829_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody829_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody829_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody829_115 : StackLang.HolProg 64 :=
.seq NamedBody829_113 NamedBody829_114

def NamedBody829_116 : StackLang.HolProg 64 :=
.seq NamedBody829_112 NamedBody829_115

def NamedBody829_117 : StackLang.HolProg 64 :=
.seq NamedBody829_111 NamedBody829_116

def NamedBody829_118 : StackLang.HolProg 64 :=
.seq NamedBody829_110 NamedBody829_117

def NamedBody829_119 : StackLang.HolProg 64 :=
.seq NamedBody829_109 NamedBody829_118

def NamedBody829_120 : StackLang.HolProg 64 :=
.seq NamedBody829_108 NamedBody829_119

def NamedBody829_121 : StackLang.HolProg 64 :=
.seq NamedBody829_97 NamedBody829_120

def NamedBody829_122 : StackLang.HolProg 64 :=
.seq NamedBody829_96 NamedBody829_121

def NamedBody829_123 : StackLang.HolProg 64 :=
.seq NamedBody829_95 NamedBody829_122

def NamedBody829_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody829_125 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody829_123 NamedBody829_124

def NamedBody829_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody829_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody829_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody829_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody829_135 : StackLang.HolProg 64 :=
.seq NamedBody829_133 NamedBody829_134

def NamedBody829_136 : StackLang.HolProg 64 :=
.seq NamedBody829_132 NamedBody829_135

def NamedBody829_137 : StackLang.HolProg 64 :=
.seq NamedBody829_131 NamedBody829_136

def NamedBody829_138 : StackLang.HolProg 64 :=
.seq NamedBody829_130 NamedBody829_137

def NamedBody829_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody829_138 NamedBody829_139

def NamedBody829_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody829_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody829_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_148 : StackLang.HolProg 64 :=
.seq NamedBody829_146 NamedBody829_147

def NamedBody829_149 : StackLang.HolProg 64 :=
.seq NamedBody829_145 NamedBody829_148

def NamedBody829_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody829_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_153 : StackLang.HolProg 64 :=
.seq NamedBody829_151 NamedBody829_152

def NamedBody829_154 : StackLang.HolProg 64 :=
.seq NamedBody829_150 NamedBody829_153

def NamedBody829_155 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody829_149 NamedBody829_154

def NamedBody829_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 17#64)

def NamedBody829_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody829_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_162 : StackLang.HolProg 64 :=
.seq NamedBody829_160 NamedBody829_161

def NamedBody829_163 : StackLang.HolProg 64 :=
.seq NamedBody829_159 NamedBody829_162

def NamedBody829_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody829_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_167 : StackLang.HolProg 64 :=
.seq NamedBody829_165 NamedBody829_166

def NamedBody829_168 : StackLang.HolProg 64 :=
.seq NamedBody829_164 NamedBody829_167

def NamedBody829_169 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody829_163 NamedBody829_168

def NamedBody829_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody829_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody829_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody829_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody829_176 : StackLang.HolProg 64 :=
.seq NamedBody829_174 NamedBody829_175

def NamedBody829_177 : StackLang.HolProg 64 :=
.seq NamedBody829_173 NamedBody829_176

def NamedBody829_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) NamedBody829_177 NamedBody829_178

def NamedBody829_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody829_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody829_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody829_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody829_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody829_185 : StackLang.HolProg 64 :=
.seq NamedBody829_183 NamedBody829_184

def NamedBody829_186 : StackLang.HolProg 64 :=
.seq NamedBody829_182 NamedBody829_185

def NamedBody829_187 : StackLang.HolProg 64 :=
.seq NamedBody829_181 NamedBody829_186

def NamedBody829_188 : StackLang.HolProg 64 :=
.seq NamedBody829_180 NamedBody829_187

def NamedBody829_189 : StackLang.HolProg 64 :=
.seq NamedBody829_179 NamedBody829_188

def NamedBody829_190 : StackLang.HolProg 64 :=
.seq NamedBody829_172 NamedBody829_189

def NamedBody829_191 : StackLang.HolProg 64 :=
.seq NamedBody829_171 NamedBody829_190

def NamedBody829_192 : StackLang.HolProg 64 :=
.seq NamedBody829_170 NamedBody829_191

def NamedBody829_193 : StackLang.HolProg 64 :=
.seq NamedBody829_169 NamedBody829_192

def NamedBody829_194 : StackLang.HolProg 64 :=
.seq NamedBody829_158 NamedBody829_193

def NamedBody829_195 : StackLang.HolProg 64 :=
.seq NamedBody829_157 NamedBody829_194

def NamedBody829_196 : StackLang.HolProg 64 :=
.seq NamedBody829_156 NamedBody829_195

def NamedBody829_197 : StackLang.HolProg 64 :=
.seq NamedBody829_155 NamedBody829_196

def NamedBody829_198 : StackLang.HolProg 64 :=
.seq NamedBody829_144 NamedBody829_197

def NamedBody829_199 : StackLang.HolProg 64 :=
.seq NamedBody829_143 NamedBody829_198

def NamedBody829_200 : StackLang.HolProg 64 :=
.seq NamedBody829_142 NamedBody829_199

def NamedBody829_201 : StackLang.HolProg 64 :=
.seq NamedBody829_141 NamedBody829_200

def NamedBody829_202 : StackLang.HolProg 64 :=
.seq NamedBody829_140 NamedBody829_201

def NamedBody829_203 : StackLang.HolProg 64 :=
.seq NamedBody829_129 NamedBody829_202

def NamedBody829_204 : StackLang.HolProg 64 :=
.seq NamedBody829_128 NamedBody829_203

def NamedBody829_205 : StackLang.HolProg 64 :=
.seq NamedBody829_127 NamedBody829_204

def NamedBody829_206 : StackLang.HolProg 64 :=
.seq NamedBody829_126 NamedBody829_205

def NamedBody829_207 : StackLang.HolProg 64 :=
.seq NamedBody829_125 NamedBody829_206

def NamedBody829_208 : StackLang.HolProg 64 :=
.seq NamedBody829_94 NamedBody829_207

def NamedBody829_209 : StackLang.HolProg 64 :=
.seq NamedBody829_93 NamedBody829_208

def NamedBody829_210 : StackLang.HolProg 64 :=
.seq NamedBody829_92 NamedBody829_209

def NamedBody829_211 : StackLang.HolProg 64 :=
.seq NamedBody829_91 NamedBody829_210

def NamedBody829_212 : StackLang.HolProg 64 :=
.seq NamedBody829_90 NamedBody829_211

def NamedBody829_213 : StackLang.HolProg 64 :=
.seq NamedBody829_89 NamedBody829_212

def NamedBody829_214 : StackLang.HolProg 64 :=
.seq NamedBody829_88 NamedBody829_213

def NamedBody829_215 : StackLang.HolProg 64 :=
.seq NamedBody829_87 NamedBody829_214

def NamedBody829_216 : StackLang.HolProg 64 :=
.seq NamedBody829_86 NamedBody829_215

def NamedBody829_217 : StackLang.HolProg 64 :=
.seq NamedBody829_85 NamedBody829_216

def NamedBody829_218 : StackLang.HolProg 64 :=
.seq NamedBody829_84 NamedBody829_217

def NamedBody829_219 : StackLang.HolProg 64 :=
.seq NamedBody829_73 NamedBody829_218

def NamedBody829_220 : StackLang.HolProg 64 :=
.seq NamedBody829_72 NamedBody829_219

def NamedBody829_221 : StackLang.HolProg 64 :=
.seq NamedBody829_71 NamedBody829_220

def NamedBody829_222 : StackLang.HolProg 64 :=
.seq NamedBody829_70 NamedBody829_221

def NamedBody829_223 : StackLang.HolProg 64 :=
.seq NamedBody829_11 NamedBody829_222

def NamedBody829_224 : StackLang.HolProg 64 :=
.seq NamedBody829_8 NamedBody829_223

def NamedBody829_225 : StackLang.HolProg 64 :=
.seq NamedBody829_7 NamedBody829_224

def NamedBody829_226 : StackLang.HolProg 64 :=
.seq NamedBody829_6 NamedBody829_225

def Named829 : Nat × StackLang.HolProg 64 := (829, NamedBody829_226)
theorem Named829_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed829 = Named829 := by
  kernel_rfl
#print axioms Named829_eq
end InitECandidate.Proofs.BackendStages
