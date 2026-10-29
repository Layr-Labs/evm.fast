import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed177
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody177_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody177_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody177_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody177_3 : StackLang.HolProg 64 :=
.seq NamedBody177_1 NamedBody177_2

def NamedBody177_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody177_3 NamedBody177_4

def NamedBody177_6 : StackLang.HolProg 64 :=
.seq NamedBody177_0 NamedBody177_5

def NamedBody177_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody177_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody177_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 128#64)

def NamedBody177_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody177_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody177_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody177_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody177_17 : StackLang.HolProg 64 :=
.seq NamedBody177_15 NamedBody177_16

def NamedBody177_18 : StackLang.HolProg 64 :=
.seq NamedBody177_14 NamedBody177_17

def NamedBody177_19 : StackLang.HolProg 64 :=
.seq NamedBody177_13 NamedBody177_18

def NamedBody177_20 : StackLang.HolProg 64 :=
.seq NamedBody177_12 NamedBody177_19

def NamedBody177_21 : StackLang.HolProg 64 :=
.seq NamedBody177_11 NamedBody177_20

def NamedBody177_22 : StackLang.HolProg 64 :=
.seq NamedBody177_10 NamedBody177_21

def NamedBody177_23 : StackLang.HolProg 64 :=
.seq NamedBody177_9 NamedBody177_22

def NamedBody177_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody177_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody177_23 NamedBody177_24

def NamedBody177_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody177_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody177_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 128#64)

def NamedBody177_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody177_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody177_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody177_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody177_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody177_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody177_37 : StackLang.HolProg 64 :=
.seq NamedBody177_35 NamedBody177_36

def NamedBody177_38 : StackLang.HolProg 64 :=
.seq NamedBody177_34 NamedBody177_37

def NamedBody177_39 : StackLang.HolProg 64 :=
.seq NamedBody177_33 NamedBody177_38

def NamedBody177_40 : StackLang.HolProg 64 :=
.seq NamedBody177_32 NamedBody177_39

def NamedBody177_41 : StackLang.HolProg 64 :=
.seq NamedBody177_31 NamedBody177_40

def NamedBody177_42 : StackLang.HolProg 64 :=
.seq NamedBody177_30 NamedBody177_41

def NamedBody177_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody177_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody177_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody177_46 : StackLang.HolProg 64 :=
.seq NamedBody177_44 NamedBody177_45

def NamedBody177_47 : StackLang.HolProg 64 :=
.seq NamedBody177_43 NamedBody177_46

def NamedBody177_48 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody177_42 NamedBody177_47

def NamedBody177_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody177_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody177_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody177_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody177_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody177_54 : StackLang.HolProg 64 :=
.seq NamedBody177_52 NamedBody177_53

def NamedBody177_55 : StackLang.HolProg 64 :=
.seq NamedBody177_51 NamedBody177_54

def NamedBody177_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 199#64)

def NamedBody177_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody177_59 : StackLang.HolProg 64 :=
.seq NamedBody177_57 NamedBody177_58

def NamedBody177_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody177_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody177_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody177_63 : StackLang.HolProg 64 :=
.seq NamedBody177_61 NamedBody177_62

def NamedBody177_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_65 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody177_63 NamedBody177_64

def NamedBody177_66 : StackLang.HolProg 64 :=
.seq NamedBody177_60 NamedBody177_65

def NamedBody177_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody177_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody177_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 177 3

def NamedBody177_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody177_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody177_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody177_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody177_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody177_76 : StackLang.HolProg 64 :=
.seq NamedBody177_74 NamedBody177_75

def NamedBody177_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody177_78 : StackLang.HolProg 64 :=
.seq NamedBody177_76 NamedBody177_77

def NamedBody177_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody177_80 : StackLang.HolProg 64 :=
.seq NamedBody177_78 NamedBody177_79

def NamedBody177_81 : StackLang.HolProg 64 :=
.seq NamedBody177_73 NamedBody177_80

def NamedBody177_82 : StackLang.HolProg 64 :=
.seq NamedBody177_72 NamedBody177_81

def NamedBody177_83 : StackLang.HolProg 64 :=
.seq NamedBody177_71 NamedBody177_82

def NamedBody177_84 : StackLang.HolProg 64 :=
.seq NamedBody177_70 NamedBody177_83

def NamedBody177_85 : StackLang.HolProg 64 :=
.seq NamedBody177_69 NamedBody177_84

def NamedBody177_86 : StackLang.HolProg 64 :=
.seq NamedBody177_68 NamedBody177_85

def NamedBody177_87 : StackLang.HolProg 64 :=
.seq NamedBody177_67 NamedBody177_86

def NamedBody177_88 : StackLang.HolProg 64 :=
.seq NamedBody177_66 NamedBody177_87

def NamedBody177_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody177_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody177_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody177_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody177_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody177_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody177_98 : StackLang.HolProg 64 :=
.seq NamedBody177_96 NamedBody177_97

def NamedBody177_99 : StackLang.HolProg 64 :=
.seq NamedBody177_95 NamedBody177_98

def NamedBody177_100 : StackLang.HolProg 64 :=
.seq NamedBody177_94 NamedBody177_99

def NamedBody177_101 : StackLang.HolProg 64 :=
.seq NamedBody177_93 NamedBody177_100

def NamedBody177_102 : StackLang.HolProg 64 :=
.seq NamedBody177_92 NamedBody177_101

def NamedBody177_103 : StackLang.HolProg 64 :=
.seq NamedBody177_91 NamedBody177_102

def NamedBody177_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody177_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody177_106 : StackLang.HolProg 64 :=
.seq NamedBody177_104 NamedBody177_105

def NamedBody177_107 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody177_108 : StackLang.HolProg 64 :=
.seq NamedBody177_106 NamedBody177_107

def NamedBody177_109 : StackLang.HolProg 64 :=
.call (some (NamedBody177_103, 1, 177, 2)) (Sum.inl 172) (some (NamedBody177_108, 177, 3))

def NamedBody177_110 : StackLang.HolProg 64 :=
.seq NamedBody177_90 NamedBody177_109

def NamedBody177_111 : StackLang.HolProg 64 :=
.seq NamedBody177_89 NamedBody177_110

def NamedBody177_112 : StackLang.HolProg 64 :=
.seq NamedBody177_88 NamedBody177_111

def NamedBody177_113 : StackLang.HolProg 64 :=
.seq NamedBody177_59 NamedBody177_112

def NamedBody177_114 : StackLang.HolProg 64 :=
.seq NamedBody177_56 NamedBody177_113

def NamedBody177_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody177_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody177_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody177_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody177_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody177_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 200#64)

def NamedBody177_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody177_125 : StackLang.HolProg 64 :=
.seq NamedBody177_123 NamedBody177_124

def NamedBody177_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody177_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody177_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody177_129 : StackLang.HolProg 64 :=
.seq NamedBody177_127 NamedBody177_128

def NamedBody177_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody177_129 NamedBody177_130

def NamedBody177_132 : StackLang.HolProg 64 :=
.seq NamedBody177_126 NamedBody177_131

def NamedBody177_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody177_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody177_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 177 5

def NamedBody177_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody177_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody177_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody177_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody177_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody177_142 : StackLang.HolProg 64 :=
.seq NamedBody177_140 NamedBody177_141

def NamedBody177_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody177_144 : StackLang.HolProg 64 :=
.seq NamedBody177_142 NamedBody177_143

def NamedBody177_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody177_146 : StackLang.HolProg 64 :=
.seq NamedBody177_144 NamedBody177_145

def NamedBody177_147 : StackLang.HolProg 64 :=
.seq NamedBody177_139 NamedBody177_146

def NamedBody177_148 : StackLang.HolProg 64 :=
.seq NamedBody177_138 NamedBody177_147

def NamedBody177_149 : StackLang.HolProg 64 :=
.seq NamedBody177_137 NamedBody177_148

def NamedBody177_150 : StackLang.HolProg 64 :=
.seq NamedBody177_136 NamedBody177_149

def NamedBody177_151 : StackLang.HolProg 64 :=
.seq NamedBody177_135 NamedBody177_150

def NamedBody177_152 : StackLang.HolProg 64 :=
.seq NamedBody177_134 NamedBody177_151

def NamedBody177_153 : StackLang.HolProg 64 :=
.seq NamedBody177_133 NamedBody177_152

def NamedBody177_154 : StackLang.HolProg 64 :=
.seq NamedBody177_132 NamedBody177_153

def NamedBody177_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody177_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody177_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody177_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody177_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody177_163 : StackLang.HolProg 64 :=
.seq NamedBody177_161 NamedBody177_162

def NamedBody177_164 : StackLang.HolProg 64 :=
.seq NamedBody177_160 NamedBody177_163

def NamedBody177_165 : StackLang.HolProg 64 :=
.seq NamedBody177_159 NamedBody177_164

def NamedBody177_166 : StackLang.HolProg 64 :=
.seq NamedBody177_158 NamedBody177_165

def NamedBody177_167 : StackLang.HolProg 64 :=
.seq NamedBody177_157 NamedBody177_166

def NamedBody177_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody177_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody177_170 : StackLang.HolProg 64 :=
.seq NamedBody177_168 NamedBody177_169

def NamedBody177_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody177_172 : StackLang.HolProg 64 :=
.seq NamedBody177_170 NamedBody177_171

def NamedBody177_173 : StackLang.HolProg 64 :=
.call (some (NamedBody177_167, 1, 177, 4)) (Sum.inl 173) (some (NamedBody177_172, 177, 5))

def NamedBody177_174 : StackLang.HolProg 64 :=
.seq NamedBody177_156 NamedBody177_173

def NamedBody177_175 : StackLang.HolProg 64 :=
.seq NamedBody177_155 NamedBody177_174

def NamedBody177_176 : StackLang.HolProg 64 :=
.seq NamedBody177_154 NamedBody177_175

def NamedBody177_177 : StackLang.HolProg 64 :=
.seq NamedBody177_125 NamedBody177_176

def NamedBody177_178 : StackLang.HolProg 64 :=
.seq NamedBody177_122 NamedBody177_177

def NamedBody177_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody177_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody177_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody177_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody177_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody177_185 : StackLang.HolProg 64 :=
.seq NamedBody177_183 NamedBody177_184

def NamedBody177_186 : StackLang.HolProg 64 :=
.seq NamedBody177_182 NamedBody177_185

def NamedBody177_187 : StackLang.HolProg 64 :=
.seq NamedBody177_181 NamedBody177_186

def NamedBody177_188 : StackLang.HolProg 64 :=
.seq NamedBody177_180 NamedBody177_187

def NamedBody177_189 : StackLang.HolProg 64 :=
.seq NamedBody177_179 NamedBody177_188

def NamedBody177_190 : StackLang.HolProg 64 :=
.seq NamedBody177_178 NamedBody177_189

def NamedBody177_191 : StackLang.HolProg 64 :=
.seq NamedBody177_121 NamedBody177_190

def NamedBody177_192 : StackLang.HolProg 64 :=
.seq NamedBody177_120 NamedBody177_191

def NamedBody177_193 : StackLang.HolProg 64 :=
.seq NamedBody177_119 NamedBody177_192

def NamedBody177_194 : StackLang.HolProg 64 :=
.seq NamedBody177_118 NamedBody177_193

def NamedBody177_195 : StackLang.HolProg 64 :=
.seq NamedBody177_117 NamedBody177_194

def NamedBody177_196 : StackLang.HolProg 64 :=
.seq NamedBody177_116 NamedBody177_195

def NamedBody177_197 : StackLang.HolProg 64 :=
.seq NamedBody177_115 NamedBody177_196

def NamedBody177_198 : StackLang.HolProg 64 :=
.seq NamedBody177_114 NamedBody177_197

def NamedBody177_199 : StackLang.HolProg 64 :=
.seq NamedBody177_55 NamedBody177_198

def NamedBody177_200 : StackLang.HolProg 64 :=
.seq NamedBody177_50 NamedBody177_199

def NamedBody177_201 : StackLang.HolProg 64 :=
.seq NamedBody177_49 NamedBody177_200

def NamedBody177_202 : StackLang.HolProg 64 :=
.seq NamedBody177_48 NamedBody177_201

def NamedBody177_203 : StackLang.HolProg 64 :=
.seq NamedBody177_29 NamedBody177_202

def NamedBody177_204 : StackLang.HolProg 64 :=
.seq NamedBody177_28 NamedBody177_203

def NamedBody177_205 : StackLang.HolProg 64 :=
.seq NamedBody177_27 NamedBody177_204

def NamedBody177_206 : StackLang.HolProg 64 :=
.seq NamedBody177_26 NamedBody177_205

def NamedBody177_207 : StackLang.HolProg 64 :=
.seq NamedBody177_25 NamedBody177_206

def NamedBody177_208 : StackLang.HolProg 64 :=
.seq NamedBody177_8 NamedBody177_207

def NamedBody177_209 : StackLang.HolProg 64 :=
.seq NamedBody177_7 NamedBody177_208

def NamedBody177_210 : StackLang.HolProg 64 :=
.seq NamedBody177_6 NamedBody177_209

def Named177 : Nat × StackLang.HolProg 64 := (177, NamedBody177_210)
theorem Named177_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed177 = Named177 := by
  kernel_rfl
#print axioms Named177_eq
end InitECandidate.Proofs.BackendStages
