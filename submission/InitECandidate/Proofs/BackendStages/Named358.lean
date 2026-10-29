import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed358
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody358_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody358_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody358_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody358_3 : StackLang.HolProg 64 :=
.seq NamedBody358_1 NamedBody358_2

def NamedBody358_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody358_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody358_3 NamedBody358_4

def NamedBody358_6 : StackLang.HolProg 64 :=
.seq NamedBody358_0 NamedBody358_5

def NamedBody358_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody358_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody358_9 : StackLang.HolProg 64 :=
.seq NamedBody358_7 NamedBody358_8

def NamedBody358_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody358_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1032#64)

def NamedBody358_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody358_13 : StackLang.HolProg 64 :=
.seq NamedBody358_11 NamedBody358_12

def NamedBody358_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody358_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody358_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody358_17 : StackLang.HolProg 64 :=
.seq NamedBody358_15 NamedBody358_16

def NamedBody358_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody358_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody358_17 NamedBody358_18

def NamedBody358_20 : StackLang.HolProg 64 :=
.seq NamedBody358_14 NamedBody358_19

def NamedBody358_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody358_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody358_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 358 3

def NamedBody358_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody358_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody358_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody358_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody358_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody358_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody358_30 : StackLang.HolProg 64 :=
.seq NamedBody358_28 NamedBody358_29

def NamedBody358_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody358_32 : StackLang.HolProg 64 :=
.seq NamedBody358_30 NamedBody358_31

def NamedBody358_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody358_34 : StackLang.HolProg 64 :=
.seq NamedBody358_32 NamedBody358_33

def NamedBody358_35 : StackLang.HolProg 64 :=
.seq NamedBody358_27 NamedBody358_34

def NamedBody358_36 : StackLang.HolProg 64 :=
.seq NamedBody358_26 NamedBody358_35

def NamedBody358_37 : StackLang.HolProg 64 :=
.seq NamedBody358_25 NamedBody358_36

def NamedBody358_38 : StackLang.HolProg 64 :=
.seq NamedBody358_24 NamedBody358_37

def NamedBody358_39 : StackLang.HolProg 64 :=
.seq NamedBody358_23 NamedBody358_38

def NamedBody358_40 : StackLang.HolProg 64 :=
.seq NamedBody358_22 NamedBody358_39

def NamedBody358_41 : StackLang.HolProg 64 :=
.seq NamedBody358_21 NamedBody358_40

def NamedBody358_42 : StackLang.HolProg 64 :=
.seq NamedBody358_20 NamedBody358_41

def NamedBody358_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody358_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody358_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody358_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody358_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody358_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody358_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody358_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody358_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody358_52 : StackLang.HolProg 64 :=
.seq NamedBody358_50 NamedBody358_51

def NamedBody358_53 : StackLang.HolProg 64 :=
.seq NamedBody358_49 NamedBody358_52

def NamedBody358_54 : StackLang.HolProg 64 :=
.seq NamedBody358_48 NamedBody358_53

def NamedBody358_55 : StackLang.HolProg 64 :=
.seq NamedBody358_47 NamedBody358_54

def NamedBody358_56 : StackLang.HolProg 64 :=
.seq NamedBody358_46 NamedBody358_55

def NamedBody358_57 : StackLang.HolProg 64 :=
.seq NamedBody358_45 NamedBody358_56

def NamedBody358_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody358_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody358_60 : StackLang.HolProg 64 :=
.seq NamedBody358_58 NamedBody358_59

def NamedBody358_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody358_62 : StackLang.HolProg 64 :=
.seq NamedBody358_60 NamedBody358_61

def NamedBody358_63 : StackLang.HolProg 64 :=
.call (some (NamedBody358_57, 1, 358, 2)) (Sum.inl 139) (some (NamedBody358_62, 358, 3))

def NamedBody358_64 : StackLang.HolProg 64 :=
.seq NamedBody358_44 NamedBody358_63

def NamedBody358_65 : StackLang.HolProg 64 :=
.seq NamedBody358_43 NamedBody358_64

def NamedBody358_66 : StackLang.HolProg 64 :=
.seq NamedBody358_42 NamedBody358_65

def NamedBody358_67 : StackLang.HolProg 64 :=
.seq NamedBody358_13 NamedBody358_66

def NamedBody358_68 : StackLang.HolProg 64 :=
.seq NamedBody358_10 NamedBody358_67

def NamedBody358_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody358_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody358_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody358_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody358_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody358_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody358_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody358_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody358_77 : StackLang.HolProg 64 :=
.seq NamedBody358_75 NamedBody358_76

def NamedBody358_78 : StackLang.HolProg 64 :=
.seq NamedBody358_74 NamedBody358_77

def NamedBody358_79 : StackLang.HolProg 64 :=
.seq NamedBody358_73 NamedBody358_78

def NamedBody358_80 : StackLang.HolProg 64 :=
.seq NamedBody358_72 NamedBody358_79

def NamedBody358_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody358_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody358_80 NamedBody358_81

def NamedBody358_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody358_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody358_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody358_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody358_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody358_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody358_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 128#64)

def NamedBody358_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody358_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody358_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody358_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody358_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody358_95 : StackLang.HolProg 64 :=
.seq NamedBody358_93 NamedBody358_94

def NamedBody358_96 : StackLang.HolProg 64 :=
.seq NamedBody358_92 NamedBody358_95

def NamedBody358_97 : StackLang.HolProg 64 :=
.seq NamedBody358_91 NamedBody358_96

def NamedBody358_98 : StackLang.HolProg 64 :=
.seq NamedBody358_90 NamedBody358_97

def NamedBody358_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody358_100 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody358_98 NamedBody358_99

def NamedBody358_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody358_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody358_103 : StackLang.HolProg 64 :=
.seq NamedBody358_101 NamedBody358_102

def NamedBody358_104 : StackLang.HolProg 64 :=
.seq NamedBody358_100 NamedBody358_103

def NamedBody358_105 : StackLang.HolProg 64 :=
.seq NamedBody358_89 NamedBody358_104

def NamedBody358_106 : StackLang.HolProg 64 :=
.seq NamedBody358_88 NamedBody358_105

def NamedBody358_107 : StackLang.HolProg 64 :=
.seq NamedBody358_87 NamedBody358_106

def NamedBody358_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody358_109 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody358_107 NamedBody358_108

def NamedBody358_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody358_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody358_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody358_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody358_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody358_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody358_116 : StackLang.HolProg 64 :=
.seq NamedBody358_114 NamedBody358_115

def NamedBody358_117 : StackLang.HolProg 64 :=
.seq NamedBody358_113 NamedBody358_116

def NamedBody358_118 : StackLang.HolProg 64 :=
.seq NamedBody358_112 NamedBody358_117

def NamedBody358_119 : StackLang.HolProg 64 :=
.seq NamedBody358_111 NamedBody358_118

def NamedBody358_120 : StackLang.HolProg 64 :=
.seq NamedBody358_110 NamedBody358_119

def NamedBody358_121 : StackLang.HolProg 64 :=
.seq NamedBody358_109 NamedBody358_120

def NamedBody358_122 : StackLang.HolProg 64 :=
.seq NamedBody358_86 NamedBody358_121

def NamedBody358_123 : StackLang.HolProg 64 :=
.seq NamedBody358_85 NamedBody358_122

def NamedBody358_124 : StackLang.HolProg 64 :=
.seq NamedBody358_84 NamedBody358_123

def NamedBody358_125 : StackLang.HolProg 64 :=
.seq NamedBody358_83 NamedBody358_124

def NamedBody358_126 : StackLang.HolProg 64 :=
.seq NamedBody358_82 NamedBody358_125

def NamedBody358_127 : StackLang.HolProg 64 :=
.seq NamedBody358_71 NamedBody358_126

def NamedBody358_128 : StackLang.HolProg 64 :=
.seq NamedBody358_70 NamedBody358_127

def NamedBody358_129 : StackLang.HolProg 64 :=
.seq NamedBody358_69 NamedBody358_128

def NamedBody358_130 : StackLang.HolProg 64 :=
.seq NamedBody358_68 NamedBody358_129

def NamedBody358_131 : StackLang.HolProg 64 :=
.seq NamedBody358_9 NamedBody358_130

def NamedBody358_132 : StackLang.HolProg 64 :=
.seq NamedBody358_6 NamedBody358_131

def Named358 : Nat × StackLang.HolProg 64 := (358, NamedBody358_132)
theorem Named358_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed358 = Named358 := by
  kernel_rfl
#print axioms Named358_eq
end InitECandidate.Proofs.BackendStages
