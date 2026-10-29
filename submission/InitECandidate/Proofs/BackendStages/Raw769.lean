import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function769
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody769_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody769_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody769_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def rawBody769_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody769_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 56#64))

def rawBody769_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 64#64))

def rawBody769_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 72#64))

def rawBody769_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 80#64))

def rawBody769_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 88#64))

def rawBody769_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody769_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 2

def rawBody769_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 1

def rawBody769_16 : StackLang.HolProg 64 :=
.seq rawBody769_14 rawBody769_15

def rawBody769_17 : StackLang.HolProg 64 :=
.seq rawBody769_13 rawBody769_16

def rawBody769_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3455#64)

def rawBody769_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody769_21 : StackLang.HolProg 64 :=
.seq rawBody769_19 rawBody769_20

def rawBody769_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody769_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody769_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody769_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 769 3

def rawBody769_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody769_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody769_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody769_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody769_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody769_32 : StackLang.HolProg 64 :=
.seq rawBody769_30 rawBody769_31

def rawBody769_33 : StackLang.HolProg 64 :=
.seq rawBody769_29 rawBody769_32

def rawBody769_34 : StackLang.HolProg 64 :=
.seq rawBody769_28 rawBody769_33

def rawBody769_35 : StackLang.HolProg 64 :=
.seq rawBody769_27 rawBody769_34

def rawBody769_36 : StackLang.HolProg 64 :=
.seq rawBody769_26 rawBody769_35

def rawBody769_37 : StackLang.HolProg 64 :=
.seq rawBody769_25 rawBody769_36

def rawBody769_38 : StackLang.HolProg 64 :=
.seq rawBody769_24 rawBody769_37

def rawBody769_39 : StackLang.HolProg 64 :=
.seq rawBody769_23 rawBody769_38

def rawBody769_40 : StackLang.HolProg 64 :=
.seq rawBody769_22 rawBody769_39

def rawBody769_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody769_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody769_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody769_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody769_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody769_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody769_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 15 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody769_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody769_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 17 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody769_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 16 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody769_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 19 3

def rawBody769_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody769_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 18 1

def rawBody769_56 : StackLang.HolProg 64 :=
.seq rawBody769_54 rawBody769_55

def rawBody769_57 : StackLang.HolProg 64 :=
.seq rawBody769_53 rawBody769_56

def rawBody769_58 : StackLang.HolProg 64 :=
.seq rawBody769_52 rawBody769_57

def rawBody769_59 : StackLang.HolProg 64 :=
.seq rawBody769_51 rawBody769_58

def rawBody769_60 : StackLang.HolProg 64 :=
.seq rawBody769_50 rawBody769_59

def rawBody769_61 : StackLang.HolProg 64 :=
.seq rawBody769_49 rawBody769_60

def rawBody769_62 : StackLang.HolProg 64 :=
.seq rawBody769_48 rawBody769_61

def rawBody769_63 : StackLang.HolProg 64 :=
.seq rawBody769_47 rawBody769_62

def rawBody769_64 : StackLang.HolProg 64 :=
.seq rawBody769_46 rawBody769_63

def rawBody769_65 : StackLang.HolProg 64 :=
.seq rawBody769_45 rawBody769_64

def rawBody769_66 : StackLang.HolProg 64 :=
.seq rawBody769_44 rawBody769_65

def rawBody769_67 : StackLang.HolProg 64 :=
.seq rawBody769_43 rawBody769_66

def rawBody769_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 19 3

def rawBody769_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody769_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 18 1

def rawBody769_71 : StackLang.HolProg 64 :=
.seq rawBody769_69 rawBody769_70

def rawBody769_72 : StackLang.HolProg 64 :=
.seq rawBody769_68 rawBody769_71

def rawBody769_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody769_74 : StackLang.HolProg 64 :=
.seq rawBody769_72 rawBody769_73

def rawBody769_75 : StackLang.HolProg 64 :=
.call (some (rawBody769_67, 0, 769, 2)) (Sum.inl 712) (some (rawBody769_74, 769, 3))

def rawBody769_76 : StackLang.HolProg 64 :=
.seq rawBody769_42 rawBody769_75

def rawBody769_77 : StackLang.HolProg 64 :=
.seq rawBody769_41 rawBody769_76

def rawBody769_78 : StackLang.HolProg 64 :=
.seq rawBody769_40 rawBody769_77

def rawBody769_79 : StackLang.HolProg 64 :=
.seq rawBody769_21 rawBody769_78

def rawBody769_80 : StackLang.HolProg 64 :=
.seq rawBody769_18 rawBody769_79

def rawBody769_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody769_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody769_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody769_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody769_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody769_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody769_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def rawBody769_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def rawBody769_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 96#64))

def rawBody769_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 104#64))

def rawBody769_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def rawBody769_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 120#64))

def rawBody769_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 128#64))

def rawBody769_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 136#64))

def rawBody769_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 0#64))

def rawBody769_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 8#64))

def rawBody769_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 16#64))

def rawBody769_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 24#64))

def rawBody769_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 32#64))

def rawBody769_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 40#64))

def rawBody769_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 18
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def rawBody769_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody769_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 8#64))

def rawBody769_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def rawBody769_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 24#64))

def rawBody769_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 32#64))

def rawBody769_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 40#64))

def rawBody769_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_135 : StackLang.HolProg 64 :=
.seq rawBody769_133 rawBody769_134

def rawBody769_136 : StackLang.HolProg 64 :=
.seq rawBody769_132 rawBody769_135

def rawBody769_137 : StackLang.HolProg 64 :=
.seq rawBody769_131 rawBody769_136

def rawBody769_138 : StackLang.HolProg 64 :=
.seq rawBody769_130 rawBody769_137

def rawBody769_139 : StackLang.HolProg 64 :=
.seq rawBody769_129 rawBody769_138

def rawBody769_140 : StackLang.HolProg 64 :=
.seq rawBody769_128 rawBody769_139

def rawBody769_141 : StackLang.HolProg 64 :=
.seq rawBody769_127 rawBody769_140

def rawBody769_142 : StackLang.HolProg 64 :=
.seq rawBody769_126 rawBody769_141

def rawBody769_143 : StackLang.HolProg 64 :=
.seq rawBody769_125 rawBody769_142

def rawBody769_144 : StackLang.HolProg 64 :=
.seq rawBody769_124 rawBody769_143

def rawBody769_145 : StackLang.HolProg 64 :=
.seq rawBody769_123 rawBody769_144

def rawBody769_146 : StackLang.HolProg 64 :=
.seq rawBody769_122 rawBody769_145

def rawBody769_147 : StackLang.HolProg 64 :=
.seq rawBody769_121 rawBody769_146

def rawBody769_148 : StackLang.HolProg 64 :=
.seq rawBody769_120 rawBody769_147

def rawBody769_149 : StackLang.HolProg 64 :=
.seq rawBody769_119 rawBody769_148

def rawBody769_150 : StackLang.HolProg 64 :=
.seq rawBody769_118 rawBody769_149

def rawBody769_151 : StackLang.HolProg 64 :=
.seq rawBody769_117 rawBody769_150

def rawBody769_152 : StackLang.HolProg 64 :=
.seq rawBody769_116 rawBody769_151

def rawBody769_153 : StackLang.HolProg 64 :=
.seq rawBody769_115 rawBody769_152

def rawBody769_154 : StackLang.HolProg 64 :=
.seq rawBody769_114 rawBody769_153

def rawBody769_155 : StackLang.HolProg 64 :=
.seq rawBody769_113 rawBody769_154

def rawBody769_156 : StackLang.HolProg 64 :=
.seq rawBody769_112 rawBody769_155

def rawBody769_157 : StackLang.HolProg 64 :=
.seq rawBody769_111 rawBody769_156

def rawBody769_158 : StackLang.HolProg 64 :=
.seq rawBody769_110 rawBody769_157

def rawBody769_159 : StackLang.HolProg 64 :=
.seq rawBody769_109 rawBody769_158

def rawBody769_160 : StackLang.HolProg 64 :=
.seq rawBody769_108 rawBody769_159

def rawBody769_161 : StackLang.HolProg 64 :=
.seq rawBody769_107 rawBody769_160

def rawBody769_162 : StackLang.HolProg 64 :=
.seq rawBody769_106 rawBody769_161

def rawBody769_163 : StackLang.HolProg 64 :=
.seq rawBody769_105 rawBody769_162

def rawBody769_164 : StackLang.HolProg 64 :=
.seq rawBody769_104 rawBody769_163

def rawBody769_165 : StackLang.HolProg 64 :=
.seq rawBody769_103 rawBody769_164

def rawBody769_166 : StackLang.HolProg 64 :=
.seq rawBody769_102 rawBody769_165

def rawBody769_167 : StackLang.HolProg 64 :=
.seq rawBody769_101 rawBody769_166

def rawBody769_168 : StackLang.HolProg 64 :=
.seq rawBody769_100 rawBody769_167

def rawBody769_169 : StackLang.HolProg 64 :=
.seq rawBody769_99 rawBody769_168

def rawBody769_170 : StackLang.HolProg 64 :=
.seq rawBody769_98 rawBody769_169

def rawBody769_171 : StackLang.HolProg 64 :=
.seq rawBody769_97 rawBody769_170

def rawBody769_172 : StackLang.HolProg 64 :=
.seq rawBody769_96 rawBody769_171

def rawBody769_173 : StackLang.HolProg 64 :=
.seq rawBody769_95 rawBody769_172

def rawBody769_174 : StackLang.HolProg 64 :=
.seq rawBody769_94 rawBody769_173

def rawBody769_175 : StackLang.HolProg 64 :=
.seq rawBody769_93 rawBody769_174

def rawBody769_176 : StackLang.HolProg 64 :=
.seq rawBody769_92 rawBody769_175

def rawBody769_177 : StackLang.HolProg 64 :=
.seq rawBody769_91 rawBody769_176

def rawBody769_178 : StackLang.HolProg 64 :=
.seq rawBody769_90 rawBody769_177

def rawBody769_179 : StackLang.HolProg 64 :=
.seq rawBody769_89 rawBody769_178

def rawBody769_180 : StackLang.HolProg 64 :=
.seq rawBody769_88 rawBody769_179

def rawBody769_181 : StackLang.HolProg 64 :=
.seq rawBody769_87 rawBody769_180

def rawBody769_182 : StackLang.HolProg 64 :=
.seq rawBody769_86 rawBody769_181

def rawBody769_183 : StackLang.HolProg 64 :=
.seq rawBody769_85 rawBody769_182

def rawBody769_184 : StackLang.HolProg 64 :=
.seq rawBody769_84 rawBody769_183

def rawBody769_185 : StackLang.HolProg 64 :=
.seq rawBody769_83 rawBody769_184

def rawBody769_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody769_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_188 : StackLang.HolProg 64 :=
.seq rawBody769_186 rawBody769_187

def rawBody769_189 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody769_185 rawBody769_188

def rawBody769_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody769_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 18
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def rawBody769_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody769_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody769_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody769_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody769_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def rawBody769_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def rawBody769_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody769_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody769_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody769_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 19

def rawBody769_209 : StackLang.HolProg 64 :=
.seq rawBody769_207 rawBody769_208

def rawBody769_210 : StackLang.HolProg 64 :=
.seq rawBody769_206 rawBody769_209

def rawBody769_211 : StackLang.HolProg 64 :=
.seq rawBody769_205 rawBody769_210

def rawBody769_212 : StackLang.HolProg 64 :=
.seq rawBody769_204 rawBody769_211

def rawBody769_213 : StackLang.HolProg 64 :=
.seq rawBody769_203 rawBody769_212

def rawBody769_214 : StackLang.HolProg 64 :=
.seq rawBody769_202 rawBody769_213

def rawBody769_215 : StackLang.HolProg 64 :=
.seq rawBody769_201 rawBody769_214

def rawBody769_216 : StackLang.HolProg 64 :=
.seq rawBody769_200 rawBody769_215

def rawBody769_217 : StackLang.HolProg 64 :=
.seq rawBody769_199 rawBody769_216

def rawBody769_218 : StackLang.HolProg 64 :=
.seq rawBody769_198 rawBody769_217

def rawBody769_219 : StackLang.HolProg 64 :=
.seq rawBody769_197 rawBody769_218

def rawBody769_220 : StackLang.HolProg 64 :=
.seq rawBody769_196 rawBody769_219

def rawBody769_221 : StackLang.HolProg 64 :=
.seq rawBody769_195 rawBody769_220

def rawBody769_222 : StackLang.HolProg 64 :=
.seq rawBody769_194 rawBody769_221

def rawBody769_223 : StackLang.HolProg 64 :=
.seq rawBody769_193 rawBody769_222

def rawBody769_224 : StackLang.HolProg 64 :=
.seq rawBody769_192 rawBody769_223

def rawBody769_225 : StackLang.HolProg 64 :=
.seq rawBody769_191 rawBody769_224

def rawBody769_226 : StackLang.HolProg 64 :=
.seq rawBody769_190 rawBody769_225

def rawBody769_227 : StackLang.HolProg 64 :=
.seq rawBody769_189 rawBody769_226

def rawBody769_228 : StackLang.HolProg 64 :=
.seq rawBody769_82 rawBody769_227

def rawBody769_229 : StackLang.HolProg 64 :=
.seq rawBody769_81 rawBody769_228

def rawBody769_230 : StackLang.HolProg 64 :=
.seq rawBody769_80 rawBody769_229

def rawBody769_231 : StackLang.HolProg 64 :=
.seq rawBody769_17 rawBody769_230

def rawBody769_232 : StackLang.HolProg 64 :=
.seq rawBody769_12 rawBody769_231

def rawBody769_233 : StackLang.HolProg 64 :=
.seq rawBody769_11 rawBody769_232

def rawBody769_234 : StackLang.HolProg 64 :=
.seq rawBody769_10 rawBody769_233

def rawBody769_235 : StackLang.HolProg 64 :=
.seq rawBody769_9 rawBody769_234

def rawBody769_236 : StackLang.HolProg 64 :=
.seq rawBody769_8 rawBody769_235

def rawBody769_237 : StackLang.HolProg 64 :=
.seq rawBody769_7 rawBody769_236

def rawBody769_238 : StackLang.HolProg 64 :=
.seq rawBody769_6 rawBody769_237

def rawBody769_239 : StackLang.HolProg 64 :=
.seq rawBody769_5 rawBody769_238

def rawBody769_240 : StackLang.HolProg 64 :=
.seq rawBody769_4 rawBody769_239

def rawBody769_241 : StackLang.HolProg 64 :=
.seq rawBody769_3 rawBody769_240

def rawBody769_242 : StackLang.HolProg 64 :=
.seq rawBody769_2 rawBody769_241

def rawBody769_243 : StackLang.HolProg 64 :=
.seq rawBody769_1 rawBody769_242

def rawBody769_244 : StackLang.HolProg 64 :=
.seq rawBody769_0 rawBody769_243

def raw769 : StackLang.HolProg 64 := rawBody769_244
theorem raw769_eq : StackRawCall.compTop RawInfo.rawInfo (function769 (.list [])).1 = raw769 := by
  kernel_rfl
#print axioms raw769_eq
end InitECandidate.Proofs.BackendStages
