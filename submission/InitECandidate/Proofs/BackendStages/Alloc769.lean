import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw769
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody769_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody769_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody769_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def AllocBody769_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody769_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 56#64))

def AllocBody769_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 64#64))

def AllocBody769_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 72#64))

def AllocBody769_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 80#64))

def AllocBody769_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 88#64))

def AllocBody769_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody769_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 2

def AllocBody769_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 1

def AllocBody769_16 : StackLang.HolProg 64 :=
.seq AllocBody769_14 AllocBody769_15

def AllocBody769_17 : StackLang.HolProg 64 :=
.seq AllocBody769_13 AllocBody769_16

def AllocBody769_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3455#64)

def AllocBody769_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody769_21 : StackLang.HolProg 64 :=
.seq AllocBody769_19 AllocBody769_20

def AllocBody769_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody769_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody769_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody769_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 769 3

def AllocBody769_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody769_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody769_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody769_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody769_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody769_32 : StackLang.HolProg 64 :=
.seq AllocBody769_30 AllocBody769_31

def AllocBody769_33 : StackLang.HolProg 64 :=
.seq AllocBody769_29 AllocBody769_32

def AllocBody769_34 : StackLang.HolProg 64 :=
.seq AllocBody769_28 AllocBody769_33

def AllocBody769_35 : StackLang.HolProg 64 :=
.seq AllocBody769_27 AllocBody769_34

def AllocBody769_36 : StackLang.HolProg 64 :=
.seq AllocBody769_26 AllocBody769_35

def AllocBody769_37 : StackLang.HolProg 64 :=
.seq AllocBody769_25 AllocBody769_36

def AllocBody769_38 : StackLang.HolProg 64 :=
.seq AllocBody769_24 AllocBody769_37

def AllocBody769_39 : StackLang.HolProg 64 :=
.seq AllocBody769_23 AllocBody769_38

def AllocBody769_40 : StackLang.HolProg 64 :=
.seq AllocBody769_22 AllocBody769_39

def AllocBody769_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody769_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody769_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody769_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody769_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody769_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody769_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 15 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody769_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody769_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 17 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody769_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 16 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody769_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 19 3

def AllocBody769_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody769_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 18 1

def AllocBody769_56 : StackLang.HolProg 64 :=
.seq AllocBody769_54 AllocBody769_55

def AllocBody769_57 : StackLang.HolProg 64 :=
.seq AllocBody769_53 AllocBody769_56

def AllocBody769_58 : StackLang.HolProg 64 :=
.seq AllocBody769_52 AllocBody769_57

def AllocBody769_59 : StackLang.HolProg 64 :=
.seq AllocBody769_51 AllocBody769_58

def AllocBody769_60 : StackLang.HolProg 64 :=
.seq AllocBody769_50 AllocBody769_59

def AllocBody769_61 : StackLang.HolProg 64 :=
.seq AllocBody769_49 AllocBody769_60

def AllocBody769_62 : StackLang.HolProg 64 :=
.seq AllocBody769_48 AllocBody769_61

def AllocBody769_63 : StackLang.HolProg 64 :=
.seq AllocBody769_47 AllocBody769_62

def AllocBody769_64 : StackLang.HolProg 64 :=
.seq AllocBody769_46 AllocBody769_63

def AllocBody769_65 : StackLang.HolProg 64 :=
.seq AllocBody769_45 AllocBody769_64

def AllocBody769_66 : StackLang.HolProg 64 :=
.seq AllocBody769_44 AllocBody769_65

def AllocBody769_67 : StackLang.HolProg 64 :=
.seq AllocBody769_43 AllocBody769_66

def AllocBody769_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 19 3

def AllocBody769_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody769_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 18 1

def AllocBody769_71 : StackLang.HolProg 64 :=
.seq AllocBody769_69 AllocBody769_70

def AllocBody769_72 : StackLang.HolProg 64 :=
.seq AllocBody769_68 AllocBody769_71

def AllocBody769_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody769_74 : StackLang.HolProg 64 :=
.seq AllocBody769_72 AllocBody769_73

def AllocBody769_75 : StackLang.HolProg 64 :=
.call (some (AllocBody769_67, 0, 769, 2)) (Sum.inl 712) (some (AllocBody769_74, 769, 3))

def AllocBody769_76 : StackLang.HolProg 64 :=
.seq AllocBody769_42 AllocBody769_75

def AllocBody769_77 : StackLang.HolProg 64 :=
.seq AllocBody769_41 AllocBody769_76

def AllocBody769_78 : StackLang.HolProg 64 :=
.seq AllocBody769_40 AllocBody769_77

def AllocBody769_79 : StackLang.HolProg 64 :=
.seq AllocBody769_21 AllocBody769_78

def AllocBody769_80 : StackLang.HolProg 64 :=
.seq AllocBody769_18 AllocBody769_79

def AllocBody769_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody769_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody769_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody769_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody769_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody769_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody769_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def AllocBody769_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def AllocBody769_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 96#64))

def AllocBody769_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 104#64))

def AllocBody769_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def AllocBody769_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 120#64))

def AllocBody769_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 128#64))

def AllocBody769_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 136#64))

def AllocBody769_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 0#64))

def AllocBody769_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 8#64))

def AllocBody769_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 16#64))

def AllocBody769_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 24#64))

def AllocBody769_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 32#64))

def AllocBody769_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 40#64))

def AllocBody769_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 18
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody769_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody769_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 8#64))

def AllocBody769_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def AllocBody769_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 24#64))

def AllocBody769_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 32#64))

def AllocBody769_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 40#64))

def AllocBody769_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_135 : StackLang.HolProg 64 :=
.seq AllocBody769_133 AllocBody769_134

def AllocBody769_136 : StackLang.HolProg 64 :=
.seq AllocBody769_132 AllocBody769_135

def AllocBody769_137 : StackLang.HolProg 64 :=
.seq AllocBody769_131 AllocBody769_136

def AllocBody769_138 : StackLang.HolProg 64 :=
.seq AllocBody769_130 AllocBody769_137

def AllocBody769_139 : StackLang.HolProg 64 :=
.seq AllocBody769_129 AllocBody769_138

def AllocBody769_140 : StackLang.HolProg 64 :=
.seq AllocBody769_128 AllocBody769_139

def AllocBody769_141 : StackLang.HolProg 64 :=
.seq AllocBody769_127 AllocBody769_140

def AllocBody769_142 : StackLang.HolProg 64 :=
.seq AllocBody769_126 AllocBody769_141

def AllocBody769_143 : StackLang.HolProg 64 :=
.seq AllocBody769_125 AllocBody769_142

def AllocBody769_144 : StackLang.HolProg 64 :=
.seq AllocBody769_124 AllocBody769_143

def AllocBody769_145 : StackLang.HolProg 64 :=
.seq AllocBody769_123 AllocBody769_144

def AllocBody769_146 : StackLang.HolProg 64 :=
.seq AllocBody769_122 AllocBody769_145

def AllocBody769_147 : StackLang.HolProg 64 :=
.seq AllocBody769_121 AllocBody769_146

def AllocBody769_148 : StackLang.HolProg 64 :=
.seq AllocBody769_120 AllocBody769_147

def AllocBody769_149 : StackLang.HolProg 64 :=
.seq AllocBody769_119 AllocBody769_148

def AllocBody769_150 : StackLang.HolProg 64 :=
.seq AllocBody769_118 AllocBody769_149

def AllocBody769_151 : StackLang.HolProg 64 :=
.seq AllocBody769_117 AllocBody769_150

def AllocBody769_152 : StackLang.HolProg 64 :=
.seq AllocBody769_116 AllocBody769_151

def AllocBody769_153 : StackLang.HolProg 64 :=
.seq AllocBody769_115 AllocBody769_152

def AllocBody769_154 : StackLang.HolProg 64 :=
.seq AllocBody769_114 AllocBody769_153

def AllocBody769_155 : StackLang.HolProg 64 :=
.seq AllocBody769_113 AllocBody769_154

def AllocBody769_156 : StackLang.HolProg 64 :=
.seq AllocBody769_112 AllocBody769_155

def AllocBody769_157 : StackLang.HolProg 64 :=
.seq AllocBody769_111 AllocBody769_156

def AllocBody769_158 : StackLang.HolProg 64 :=
.seq AllocBody769_110 AllocBody769_157

def AllocBody769_159 : StackLang.HolProg 64 :=
.seq AllocBody769_109 AllocBody769_158

def AllocBody769_160 : StackLang.HolProg 64 :=
.seq AllocBody769_108 AllocBody769_159

def AllocBody769_161 : StackLang.HolProg 64 :=
.seq AllocBody769_107 AllocBody769_160

def AllocBody769_162 : StackLang.HolProg 64 :=
.seq AllocBody769_106 AllocBody769_161

def AllocBody769_163 : StackLang.HolProg 64 :=
.seq AllocBody769_105 AllocBody769_162

def AllocBody769_164 : StackLang.HolProg 64 :=
.seq AllocBody769_104 AllocBody769_163

def AllocBody769_165 : StackLang.HolProg 64 :=
.seq AllocBody769_103 AllocBody769_164

def AllocBody769_166 : StackLang.HolProg 64 :=
.seq AllocBody769_102 AllocBody769_165

def AllocBody769_167 : StackLang.HolProg 64 :=
.seq AllocBody769_101 AllocBody769_166

def AllocBody769_168 : StackLang.HolProg 64 :=
.seq AllocBody769_100 AllocBody769_167

def AllocBody769_169 : StackLang.HolProg 64 :=
.seq AllocBody769_99 AllocBody769_168

def AllocBody769_170 : StackLang.HolProg 64 :=
.seq AllocBody769_98 AllocBody769_169

def AllocBody769_171 : StackLang.HolProg 64 :=
.seq AllocBody769_97 AllocBody769_170

def AllocBody769_172 : StackLang.HolProg 64 :=
.seq AllocBody769_96 AllocBody769_171

def AllocBody769_173 : StackLang.HolProg 64 :=
.seq AllocBody769_95 AllocBody769_172

def AllocBody769_174 : StackLang.HolProg 64 :=
.seq AllocBody769_94 AllocBody769_173

def AllocBody769_175 : StackLang.HolProg 64 :=
.seq AllocBody769_93 AllocBody769_174

def AllocBody769_176 : StackLang.HolProg 64 :=
.seq AllocBody769_92 AllocBody769_175

def AllocBody769_177 : StackLang.HolProg 64 :=
.seq AllocBody769_91 AllocBody769_176

def AllocBody769_178 : StackLang.HolProg 64 :=
.seq AllocBody769_90 AllocBody769_177

def AllocBody769_179 : StackLang.HolProg 64 :=
.seq AllocBody769_89 AllocBody769_178

def AllocBody769_180 : StackLang.HolProg 64 :=
.seq AllocBody769_88 AllocBody769_179

def AllocBody769_181 : StackLang.HolProg 64 :=
.seq AllocBody769_87 AllocBody769_180

def AllocBody769_182 : StackLang.HolProg 64 :=
.seq AllocBody769_86 AllocBody769_181

def AllocBody769_183 : StackLang.HolProg 64 :=
.seq AllocBody769_85 AllocBody769_182

def AllocBody769_184 : StackLang.HolProg 64 :=
.seq AllocBody769_84 AllocBody769_183

def AllocBody769_185 : StackLang.HolProg 64 :=
.seq AllocBody769_83 AllocBody769_184

def AllocBody769_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody769_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_188 : StackLang.HolProg 64 :=
.seq AllocBody769_186 AllocBody769_187

def AllocBody769_189 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody769_185 AllocBody769_188

def AllocBody769_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody769_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 18
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody769_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody769_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody769_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody769_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody769_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def AllocBody769_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def AllocBody769_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody769_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody769_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody769_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 19

def AllocBody769_209 : StackLang.HolProg 64 :=
.seq AllocBody769_207 AllocBody769_208

def AllocBody769_210 : StackLang.HolProg 64 :=
.seq AllocBody769_206 AllocBody769_209

def AllocBody769_211 : StackLang.HolProg 64 :=
.seq AllocBody769_205 AllocBody769_210

def AllocBody769_212 : StackLang.HolProg 64 :=
.seq AllocBody769_204 AllocBody769_211

def AllocBody769_213 : StackLang.HolProg 64 :=
.seq AllocBody769_203 AllocBody769_212

def AllocBody769_214 : StackLang.HolProg 64 :=
.seq AllocBody769_202 AllocBody769_213

def AllocBody769_215 : StackLang.HolProg 64 :=
.seq AllocBody769_201 AllocBody769_214

def AllocBody769_216 : StackLang.HolProg 64 :=
.seq AllocBody769_200 AllocBody769_215

def AllocBody769_217 : StackLang.HolProg 64 :=
.seq AllocBody769_199 AllocBody769_216

def AllocBody769_218 : StackLang.HolProg 64 :=
.seq AllocBody769_198 AllocBody769_217

def AllocBody769_219 : StackLang.HolProg 64 :=
.seq AllocBody769_197 AllocBody769_218

def AllocBody769_220 : StackLang.HolProg 64 :=
.seq AllocBody769_196 AllocBody769_219

def AllocBody769_221 : StackLang.HolProg 64 :=
.seq AllocBody769_195 AllocBody769_220

def AllocBody769_222 : StackLang.HolProg 64 :=
.seq AllocBody769_194 AllocBody769_221

def AllocBody769_223 : StackLang.HolProg 64 :=
.seq AllocBody769_193 AllocBody769_222

def AllocBody769_224 : StackLang.HolProg 64 :=
.seq AllocBody769_192 AllocBody769_223

def AllocBody769_225 : StackLang.HolProg 64 :=
.seq AllocBody769_191 AllocBody769_224

def AllocBody769_226 : StackLang.HolProg 64 :=
.seq AllocBody769_190 AllocBody769_225

def AllocBody769_227 : StackLang.HolProg 64 :=
.seq AllocBody769_189 AllocBody769_226

def AllocBody769_228 : StackLang.HolProg 64 :=
.seq AllocBody769_82 AllocBody769_227

def AllocBody769_229 : StackLang.HolProg 64 :=
.seq AllocBody769_81 AllocBody769_228

def AllocBody769_230 : StackLang.HolProg 64 :=
.seq AllocBody769_80 AllocBody769_229

def AllocBody769_231 : StackLang.HolProg 64 :=
.seq AllocBody769_17 AllocBody769_230

def AllocBody769_232 : StackLang.HolProg 64 :=
.seq AllocBody769_12 AllocBody769_231

def AllocBody769_233 : StackLang.HolProg 64 :=
.seq AllocBody769_11 AllocBody769_232

def AllocBody769_234 : StackLang.HolProg 64 :=
.seq AllocBody769_10 AllocBody769_233

def AllocBody769_235 : StackLang.HolProg 64 :=
.seq AllocBody769_9 AllocBody769_234

def AllocBody769_236 : StackLang.HolProg 64 :=
.seq AllocBody769_8 AllocBody769_235

def AllocBody769_237 : StackLang.HolProg 64 :=
.seq AllocBody769_7 AllocBody769_236

def AllocBody769_238 : StackLang.HolProg 64 :=
.seq AllocBody769_6 AllocBody769_237

def AllocBody769_239 : StackLang.HolProg 64 :=
.seq AllocBody769_5 AllocBody769_238

def AllocBody769_240 : StackLang.HolProg 64 :=
.seq AllocBody769_4 AllocBody769_239

def AllocBody769_241 : StackLang.HolProg 64 :=
.seq AllocBody769_3 AllocBody769_240

def AllocBody769_242 : StackLang.HolProg 64 :=
.seq AllocBody769_2 AllocBody769_241

def AllocBody769_243 : StackLang.HolProg 64 :=
.seq AllocBody769_1 AllocBody769_242

def AllocBody769_244 : StackLang.HolProg 64 :=
.seq AllocBody769_0 AllocBody769_243

def Alloc769 : Nat × StackLang.HolProg 64 := (769, AllocBody769_244)
theorem Alloc769_eq : StackAlloc.progComp (769, raw769) = Alloc769 := by
  kernel_rfl
#print axioms Alloc769_eq
end InitECandidate.Proofs.BackendStages
