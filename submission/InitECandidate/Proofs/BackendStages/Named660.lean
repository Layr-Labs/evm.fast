import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed660
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody660_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody660_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody660_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody660_3 : StackLang.HolProg 64 :=
.seq NamedBody660_1 NamedBody660_2

def NamedBody660_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody660_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody660_3 NamedBody660_4

def NamedBody660_6 : StackLang.HolProg 64 :=
.seq NamedBody660_0 NamedBody660_5

def NamedBody660_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody660_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody660_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody660_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody660_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody660_12 : StackLang.HolProg 64 :=
.seq NamedBody660_10 NamedBody660_11

def NamedBody660_13 : StackLang.HolProg 64 :=
.seq NamedBody660_9 NamedBody660_12

def NamedBody660_14 : StackLang.HolProg 64 :=
.seq NamedBody660_8 NamedBody660_13

def NamedBody660_15 : StackLang.HolProg 64 :=
.seq NamedBody660_7 NamedBody660_14

def NamedBody660_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody660_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2750#64)

def NamedBody660_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody660_19 : StackLang.HolProg 64 :=
.seq NamedBody660_17 NamedBody660_18

def NamedBody660_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody660_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody660_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody660_23 : StackLang.HolProg 64 :=
.seq NamedBody660_21 NamedBody660_22

def NamedBody660_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody660_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody660_23 NamedBody660_24

def NamedBody660_26 : StackLang.HolProg 64 :=
.seq NamedBody660_20 NamedBody660_25

def NamedBody660_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody660_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody660_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 660 3

def NamedBody660_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody660_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody660_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody660_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody660_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody660_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody660_36 : StackLang.HolProg 64 :=
.seq NamedBody660_34 NamedBody660_35

def NamedBody660_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody660_38 : StackLang.HolProg 64 :=
.seq NamedBody660_36 NamedBody660_37

def NamedBody660_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody660_40 : StackLang.HolProg 64 :=
.seq NamedBody660_38 NamedBody660_39

def NamedBody660_41 : StackLang.HolProg 64 :=
.seq NamedBody660_33 NamedBody660_40

def NamedBody660_42 : StackLang.HolProg 64 :=
.seq NamedBody660_32 NamedBody660_41

def NamedBody660_43 : StackLang.HolProg 64 :=
.seq NamedBody660_31 NamedBody660_42

def NamedBody660_44 : StackLang.HolProg 64 :=
.seq NamedBody660_30 NamedBody660_43

def NamedBody660_45 : StackLang.HolProg 64 :=
.seq NamedBody660_29 NamedBody660_44

def NamedBody660_46 : StackLang.HolProg 64 :=
.seq NamedBody660_28 NamedBody660_45

def NamedBody660_47 : StackLang.HolProg 64 :=
.seq NamedBody660_27 NamedBody660_46

def NamedBody660_48 : StackLang.HolProg 64 :=
.seq NamedBody660_26 NamedBody660_47

def NamedBody660_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody660_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody660_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody660_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody660_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody660_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody660_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody660_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody660_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody660_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody660_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody660_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody660_61 : StackLang.HolProg 64 :=
.seq NamedBody660_59 NamedBody660_60

def NamedBody660_62 : StackLang.HolProg 64 :=
.seq NamedBody660_58 NamedBody660_61

def NamedBody660_63 : StackLang.HolProg 64 :=
.seq NamedBody660_57 NamedBody660_62

def NamedBody660_64 : StackLang.HolProg 64 :=
.seq NamedBody660_56 NamedBody660_63

def NamedBody660_65 : StackLang.HolProg 64 :=
.seq NamedBody660_55 NamedBody660_64

def NamedBody660_66 : StackLang.HolProg 64 :=
.seq NamedBody660_54 NamedBody660_65

def NamedBody660_67 : StackLang.HolProg 64 :=
.seq NamedBody660_53 NamedBody660_66

def NamedBody660_68 : StackLang.HolProg 64 :=
.seq NamedBody660_52 NamedBody660_67

def NamedBody660_69 : StackLang.HolProg 64 :=
.seq NamedBody660_51 NamedBody660_68

def NamedBody660_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody660_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody660_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody660_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody660_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody660_75 : StackLang.HolProg 64 :=
.seq NamedBody660_73 NamedBody660_74

def NamedBody660_76 : StackLang.HolProg 64 :=
.seq NamedBody660_72 NamedBody660_75

def NamedBody660_77 : StackLang.HolProg 64 :=
.seq NamedBody660_71 NamedBody660_76

def NamedBody660_78 : StackLang.HolProg 64 :=
.seq NamedBody660_70 NamedBody660_77

def NamedBody660_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody660_80 : StackLang.HolProg 64 :=
.seq NamedBody660_78 NamedBody660_79

def NamedBody660_81 : StackLang.HolProg 64 :=
.call (some (NamedBody660_69, 1, 660, 2)) (Sum.inl 102) (some (NamedBody660_80, 660, 3))

def NamedBody660_82 : StackLang.HolProg 64 :=
.seq NamedBody660_50 NamedBody660_81

def NamedBody660_83 : StackLang.HolProg 64 :=
.seq NamedBody660_49 NamedBody660_82

def NamedBody660_84 : StackLang.HolProg 64 :=
.seq NamedBody660_48 NamedBody660_83

def NamedBody660_85 : StackLang.HolProg 64 :=
.seq NamedBody660_19 NamedBody660_84

def NamedBody660_86 : StackLang.HolProg 64 :=
.seq NamedBody660_16 NamedBody660_85

def NamedBody660_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody660_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody660_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody660_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody660_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody660_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody660_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody660_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody660_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody660_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody660_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody660_98 : StackLang.HolProg 64 :=
.seq NamedBody660_96 NamedBody660_97

def NamedBody660_99 : StackLang.HolProg 64 :=
.seq NamedBody660_95 NamedBody660_98

def NamedBody660_100 : StackLang.HolProg 64 :=
.seq NamedBody660_94 NamedBody660_99

def NamedBody660_101 : StackLang.HolProg 64 :=
.seq NamedBody660_93 NamedBody660_100

def NamedBody660_102 : StackLang.HolProg 64 :=
.seq NamedBody660_92 NamedBody660_101

def NamedBody660_103 : StackLang.HolProg 64 :=
.seq NamedBody660_91 NamedBody660_102

def NamedBody660_104 : StackLang.HolProg 64 :=
.seq NamedBody660_90 NamedBody660_103

def NamedBody660_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody660_106 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody660_104 NamedBody660_105

def NamedBody660_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody660_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody660_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody660_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 3486998266802970665#64)

def NamedBody660_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 13281191951274694749#64)

def NamedBody660_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 10917124144477883021#64)

def NamedBody660_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4332616871279656263#64)

def NamedBody660_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody660_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody660_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody660_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def NamedBody660_118 : StackLang.HolProg 64 :=
.seq NamedBody660_116 NamedBody660_117

def NamedBody660_119 : StackLang.HolProg 64 :=
.seq NamedBody660_115 NamedBody660_118

def NamedBody660_120 : StackLang.HolProg 64 :=
.seq NamedBody660_114 NamedBody660_119

def NamedBody660_121 : StackLang.HolProg 64 :=
.seq NamedBody660_113 NamedBody660_120

def NamedBody660_122 : StackLang.HolProg 64 :=
.seq NamedBody660_112 NamedBody660_121

def NamedBody660_123 : StackLang.HolProg 64 :=
.seq NamedBody660_111 NamedBody660_122

def NamedBody660_124 : StackLang.HolProg 64 :=
.seq NamedBody660_110 NamedBody660_123

def NamedBody660_125 : StackLang.HolProg 64 :=
.seq NamedBody660_109 NamedBody660_124

def NamedBody660_126 : StackLang.HolProg 64 :=
.seq NamedBody660_108 NamedBody660_125

def NamedBody660_127 : StackLang.HolProg 64 :=
.seq NamedBody660_107 NamedBody660_126

def NamedBody660_128 : StackLang.HolProg 64 :=
.seq NamedBody660_106 NamedBody660_127

def NamedBody660_129 : StackLang.HolProg 64 :=
.seq NamedBody660_89 NamedBody660_128

def NamedBody660_130 : StackLang.HolProg 64 :=
.seq NamedBody660_88 NamedBody660_129

def NamedBody660_131 : StackLang.HolProg 64 :=
.seq NamedBody660_87 NamedBody660_130

def NamedBody660_132 : StackLang.HolProg 64 :=
.seq NamedBody660_86 NamedBody660_131

def NamedBody660_133 : StackLang.HolProg 64 :=
.seq NamedBody660_15 NamedBody660_132

def NamedBody660_134 : StackLang.HolProg 64 :=
.seq NamedBody660_6 NamedBody660_133

def Named660 : Nat × StackLang.HolProg 64 := (660, NamedBody660_134)
theorem Named660_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed660 = Named660 := by
  kernel_rfl
#print axioms Named660_eq
end InitECandidate.Proofs.BackendStages
