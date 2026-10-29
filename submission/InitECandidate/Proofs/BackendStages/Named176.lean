import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed176
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody176_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody176_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody176_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody176_3 : StackLang.HolProg 64 :=
.seq NamedBody176_1 NamedBody176_2

def NamedBody176_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody176_3 NamedBody176_4

def NamedBody176_6 : StackLang.HolProg 64 :=
.seq NamedBody176_0 NamedBody176_5

def NamedBody176_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def NamedBody176_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody176_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody176_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 128#64)

def NamedBody176_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody176_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody176_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody176_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody176_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody176_21 : StackLang.HolProg 64 :=
.seq NamedBody176_19 NamedBody176_20

def NamedBody176_22 : StackLang.HolProg 64 :=
.seq NamedBody176_18 NamedBody176_21

def NamedBody176_23 : StackLang.HolProg 64 :=
.seq NamedBody176_17 NamedBody176_22

def NamedBody176_24 : StackLang.HolProg 64 :=
.seq NamedBody176_16 NamedBody176_23

def NamedBody176_25 : StackLang.HolProg 64 :=
.seq NamedBody176_15 NamedBody176_24

def NamedBody176_26 : StackLang.HolProg 64 :=
.seq NamedBody176_14 NamedBody176_25

def NamedBody176_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody176_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody176_26 NamedBody176_27

def NamedBody176_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody176_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody176_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody176_32 : StackLang.HolProg 64 :=
.seq NamedBody176_30 NamedBody176_31

def NamedBody176_33 : StackLang.HolProg 64 :=
.seq NamedBody176_29 NamedBody176_32

def NamedBody176_34 : StackLang.HolProg 64 :=
.seq NamedBody176_28 NamedBody176_33

def NamedBody176_35 : StackLang.HolProg 64 :=
.seq NamedBody176_13 NamedBody176_34

def NamedBody176_36 : StackLang.HolProg 64 :=
.seq NamedBody176_12 NamedBody176_35

def NamedBody176_37 : StackLang.HolProg 64 :=
.seq NamedBody176_11 NamedBody176_36

def NamedBody176_38 : StackLang.HolProg 64 :=
.seq NamedBody176_10 NamedBody176_37

def NamedBody176_39 : StackLang.HolProg 64 :=
.seq NamedBody176_9 NamedBody176_38

def NamedBody176_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody176_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody176_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody176_43 : StackLang.HolProg 64 :=
.seq NamedBody176_41 NamedBody176_42

def NamedBody176_44 : StackLang.HolProg 64 :=
.seq NamedBody176_40 NamedBody176_43

def NamedBody176_45 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody176_39 NamedBody176_44

def NamedBody176_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody176_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody176_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 128#64)

def NamedBody176_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody176_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody176_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody176_52 : StackLang.HolProg 64 :=
.seq NamedBody176_50 NamedBody176_51

def NamedBody176_53 : StackLang.HolProg 64 :=
.seq NamedBody176_49 NamedBody176_52

def NamedBody176_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 197#64)

def NamedBody176_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody176_57 : StackLang.HolProg 64 :=
.seq NamedBody176_55 NamedBody176_56

def NamedBody176_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody176_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody176_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody176_61 : StackLang.HolProg 64 :=
.seq NamedBody176_59 NamedBody176_60

def NamedBody176_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_63 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody176_61 NamedBody176_62

def NamedBody176_64 : StackLang.HolProg 64 :=
.seq NamedBody176_58 NamedBody176_63

def NamedBody176_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody176_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody176_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 176 3

def NamedBody176_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody176_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody176_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody176_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody176_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody176_74 : StackLang.HolProg 64 :=
.seq NamedBody176_72 NamedBody176_73

def NamedBody176_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody176_76 : StackLang.HolProg 64 :=
.seq NamedBody176_74 NamedBody176_75

def NamedBody176_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody176_78 : StackLang.HolProg 64 :=
.seq NamedBody176_76 NamedBody176_77

def NamedBody176_79 : StackLang.HolProg 64 :=
.seq NamedBody176_71 NamedBody176_78

def NamedBody176_80 : StackLang.HolProg 64 :=
.seq NamedBody176_70 NamedBody176_79

def NamedBody176_81 : StackLang.HolProg 64 :=
.seq NamedBody176_69 NamedBody176_80

def NamedBody176_82 : StackLang.HolProg 64 :=
.seq NamedBody176_68 NamedBody176_81

def NamedBody176_83 : StackLang.HolProg 64 :=
.seq NamedBody176_67 NamedBody176_82

def NamedBody176_84 : StackLang.HolProg 64 :=
.seq NamedBody176_66 NamedBody176_83

def NamedBody176_85 : StackLang.HolProg 64 :=
.seq NamedBody176_65 NamedBody176_84

def NamedBody176_86 : StackLang.HolProg 64 :=
.seq NamedBody176_64 NamedBody176_85

def NamedBody176_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody176_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody176_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody176_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody176_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody176_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody176_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody176_97 : StackLang.HolProg 64 :=
.seq NamedBody176_95 NamedBody176_96

def NamedBody176_98 : StackLang.HolProg 64 :=
.seq NamedBody176_94 NamedBody176_97

def NamedBody176_99 : StackLang.HolProg 64 :=
.seq NamedBody176_93 NamedBody176_98

def NamedBody176_100 : StackLang.HolProg 64 :=
.seq NamedBody176_92 NamedBody176_99

def NamedBody176_101 : StackLang.HolProg 64 :=
.seq NamedBody176_91 NamedBody176_100

def NamedBody176_102 : StackLang.HolProg 64 :=
.seq NamedBody176_90 NamedBody176_101

def NamedBody176_103 : StackLang.HolProg 64 :=
.seq NamedBody176_89 NamedBody176_102

def NamedBody176_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody176_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody176_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody176_107 : StackLang.HolProg 64 :=
.seq NamedBody176_105 NamedBody176_106

def NamedBody176_108 : StackLang.HolProg 64 :=
.seq NamedBody176_104 NamedBody176_107

def NamedBody176_109 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody176_110 : StackLang.HolProg 64 :=
.seq NamedBody176_108 NamedBody176_109

def NamedBody176_111 : StackLang.HolProg 64 :=
.call (some (NamedBody176_103, 1, 176, 2)) (Sum.inl 174) (some (NamedBody176_110, 176, 3))

def NamedBody176_112 : StackLang.HolProg 64 :=
.seq NamedBody176_88 NamedBody176_111

def NamedBody176_113 : StackLang.HolProg 64 :=
.seq NamedBody176_87 NamedBody176_112

def NamedBody176_114 : StackLang.HolProg 64 :=
.seq NamedBody176_86 NamedBody176_113

def NamedBody176_115 : StackLang.HolProg 64 :=
.seq NamedBody176_57 NamedBody176_114

def NamedBody176_116 : StackLang.HolProg 64 :=
.seq NamedBody176_54 NamedBody176_115

def NamedBody176_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody176_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody176_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody176_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody176_122 : StackLang.HolProg 64 :=
.seq NamedBody176_120 NamedBody176_121

def NamedBody176_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 198#64)

def NamedBody176_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody176_126 : StackLang.HolProg 64 :=
.seq NamedBody176_124 NamedBody176_125

def NamedBody176_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody176_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody176_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody176_130 : StackLang.HolProg 64 :=
.seq NamedBody176_128 NamedBody176_129

def NamedBody176_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_132 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody176_130 NamedBody176_131

def NamedBody176_133 : StackLang.HolProg 64 :=
.seq NamedBody176_127 NamedBody176_132

def NamedBody176_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody176_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody176_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 176 5

def NamedBody176_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody176_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody176_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody176_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody176_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody176_143 : StackLang.HolProg 64 :=
.seq NamedBody176_141 NamedBody176_142

def NamedBody176_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody176_145 : StackLang.HolProg 64 :=
.seq NamedBody176_143 NamedBody176_144

def NamedBody176_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody176_147 : StackLang.HolProg 64 :=
.seq NamedBody176_145 NamedBody176_146

def NamedBody176_148 : StackLang.HolProg 64 :=
.seq NamedBody176_140 NamedBody176_147

def NamedBody176_149 : StackLang.HolProg 64 :=
.seq NamedBody176_139 NamedBody176_148

def NamedBody176_150 : StackLang.HolProg 64 :=
.seq NamedBody176_138 NamedBody176_149

def NamedBody176_151 : StackLang.HolProg 64 :=
.seq NamedBody176_137 NamedBody176_150

def NamedBody176_152 : StackLang.HolProg 64 :=
.seq NamedBody176_136 NamedBody176_151

def NamedBody176_153 : StackLang.HolProg 64 :=
.seq NamedBody176_135 NamedBody176_152

def NamedBody176_154 : StackLang.HolProg 64 :=
.seq NamedBody176_134 NamedBody176_153

def NamedBody176_155 : StackLang.HolProg 64 :=
.seq NamedBody176_133 NamedBody176_154

def NamedBody176_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody176_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody176_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody176_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody176_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody176_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody176_165 : StackLang.HolProg 64 :=
.seq NamedBody176_163 NamedBody176_164

def NamedBody176_166 : StackLang.HolProg 64 :=
.seq NamedBody176_162 NamedBody176_165

def NamedBody176_167 : StackLang.HolProg 64 :=
.seq NamedBody176_161 NamedBody176_166

def NamedBody176_168 : StackLang.HolProg 64 :=
.seq NamedBody176_160 NamedBody176_167

def NamedBody176_169 : StackLang.HolProg 64 :=
.seq NamedBody176_159 NamedBody176_168

def NamedBody176_170 : StackLang.HolProg 64 :=
.seq NamedBody176_158 NamedBody176_169

def NamedBody176_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody176_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody176_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody176_174 : StackLang.HolProg 64 :=
.seq NamedBody176_172 NamedBody176_173

def NamedBody176_175 : StackLang.HolProg 64 :=
.seq NamedBody176_171 NamedBody176_174

def NamedBody176_176 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody176_177 : StackLang.HolProg 64 :=
.seq NamedBody176_175 NamedBody176_176

def NamedBody176_178 : StackLang.HolProg 64 :=
.call (some (NamedBody176_170, 1, 176, 4)) (Sum.inl 77) (some (NamedBody176_177, 176, 5))

def NamedBody176_179 : StackLang.HolProg 64 :=
.seq NamedBody176_157 NamedBody176_178

def NamedBody176_180 : StackLang.HolProg 64 :=
.seq NamedBody176_156 NamedBody176_179

def NamedBody176_181 : StackLang.HolProg 64 :=
.seq NamedBody176_155 NamedBody176_180

def NamedBody176_182 : StackLang.HolProg 64 :=
.seq NamedBody176_126 NamedBody176_181

def NamedBody176_183 : StackLang.HolProg 64 :=
.seq NamedBody176_123 NamedBody176_182

def NamedBody176_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody176_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody176_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody176_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody176_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody176_190 : StackLang.HolProg 64 :=
.seq NamedBody176_188 NamedBody176_189

def NamedBody176_191 : StackLang.HolProg 64 :=
.seq NamedBody176_187 NamedBody176_190

def NamedBody176_192 : StackLang.HolProg 64 :=
.seq NamedBody176_186 NamedBody176_191

def NamedBody176_193 : StackLang.HolProg 64 :=
.seq NamedBody176_185 NamedBody176_192

def NamedBody176_194 : StackLang.HolProg 64 :=
.seq NamedBody176_184 NamedBody176_193

def NamedBody176_195 : StackLang.HolProg 64 :=
.seq NamedBody176_183 NamedBody176_194

def NamedBody176_196 : StackLang.HolProg 64 :=
.seq NamedBody176_122 NamedBody176_195

def NamedBody176_197 : StackLang.HolProg 64 :=
.seq NamedBody176_119 NamedBody176_196

def NamedBody176_198 : StackLang.HolProg 64 :=
.seq NamedBody176_118 NamedBody176_197

def NamedBody176_199 : StackLang.HolProg 64 :=
.seq NamedBody176_117 NamedBody176_198

def NamedBody176_200 : StackLang.HolProg 64 :=
.seq NamedBody176_116 NamedBody176_199

def NamedBody176_201 : StackLang.HolProg 64 :=
.seq NamedBody176_53 NamedBody176_200

def NamedBody176_202 : StackLang.HolProg 64 :=
.seq NamedBody176_48 NamedBody176_201

def NamedBody176_203 : StackLang.HolProg 64 :=
.seq NamedBody176_47 NamedBody176_202

def NamedBody176_204 : StackLang.HolProg 64 :=
.seq NamedBody176_46 NamedBody176_203

def NamedBody176_205 : StackLang.HolProg 64 :=
.seq NamedBody176_45 NamedBody176_204

def NamedBody176_206 : StackLang.HolProg 64 :=
.seq NamedBody176_8 NamedBody176_205

def NamedBody176_207 : StackLang.HolProg 64 :=
.seq NamedBody176_7 NamedBody176_206

def NamedBody176_208 : StackLang.HolProg 64 :=
.seq NamedBody176_6 NamedBody176_207

def Named176 : Nat × StackLang.HolProg 64 := (176, NamedBody176_208)
theorem Named176_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed176 = Named176 := by
  kernel_rfl
#print axioms Named176_eq
end InitECandidate.Proofs.BackendStages
