import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function866
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody866_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody866_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody866_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody866_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody866_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody866_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody866_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody866_7 : StackLang.HolProg 64 :=
.seq rawBody866_5 rawBody866_6

def rawBody866_8 : StackLang.HolProg 64 :=
.seq rawBody866_4 rawBody866_7

def rawBody866_9 : StackLang.HolProg 64 :=
.seq rawBody866_3 rawBody866_8

def rawBody866_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4525#64)

def rawBody866_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody866_13 : StackLang.HolProg 64 :=
.seq rawBody866_11 rawBody866_12

def rawBody866_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody866_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody866_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody866_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 866 3

def rawBody866_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody866_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody866_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody866_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody866_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody866_24 : StackLang.HolProg 64 :=
.seq rawBody866_22 rawBody866_23

def rawBody866_25 : StackLang.HolProg 64 :=
.seq rawBody866_21 rawBody866_24

def rawBody866_26 : StackLang.HolProg 64 :=
.seq rawBody866_20 rawBody866_25

def rawBody866_27 : StackLang.HolProg 64 :=
.seq rawBody866_19 rawBody866_26

def rawBody866_28 : StackLang.HolProg 64 :=
.seq rawBody866_18 rawBody866_27

def rawBody866_29 : StackLang.HolProg 64 :=
.seq rawBody866_17 rawBody866_28

def rawBody866_30 : StackLang.HolProg 64 :=
.seq rawBody866_16 rawBody866_29

def rawBody866_31 : StackLang.HolProg 64 :=
.seq rawBody866_15 rawBody866_30

def rawBody866_32 : StackLang.HolProg 64 :=
.seq rawBody866_14 rawBody866_31

def rawBody866_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody866_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody866_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody866_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody866_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody866_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody866_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody866_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody866_43 : StackLang.HolProg 64 :=
.seq rawBody866_41 rawBody866_42

def rawBody866_44 : StackLang.HolProg 64 :=
.seq rawBody866_40 rawBody866_43

def rawBody866_45 : StackLang.HolProg 64 :=
.seq rawBody866_39 rawBody866_44

def rawBody866_46 : StackLang.HolProg 64 :=
.seq rawBody866_38 rawBody866_45

def rawBody866_47 : StackLang.HolProg 64 :=
.seq rawBody866_37 rawBody866_46

def rawBody866_48 : StackLang.HolProg 64 :=
.seq rawBody866_36 rawBody866_47

def rawBody866_49 : StackLang.HolProg 64 :=
.seq rawBody866_35 rawBody866_48

def rawBody866_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody866_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody866_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody866_53 : StackLang.HolProg 64 :=
.seq rawBody866_51 rawBody866_52

def rawBody866_54 : StackLang.HolProg 64 :=
.seq rawBody866_50 rawBody866_53

def rawBody866_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody866_56 : StackLang.HolProg 64 :=
.seq rawBody866_54 rawBody866_55

def rawBody866_57 : StackLang.HolProg 64 :=
.call (some (rawBody866_49, 0, 866, 2)) (Sum.inl 68) (some (rawBody866_56, 866, 3))

def rawBody866_58 : StackLang.HolProg 64 :=
.seq rawBody866_34 rawBody866_57

def rawBody866_59 : StackLang.HolProg 64 :=
.seq rawBody866_33 rawBody866_58

def rawBody866_60 : StackLang.HolProg 64 :=
.seq rawBody866_32 rawBody866_59

def rawBody866_61 : StackLang.HolProg 64 :=
.seq rawBody866_13 rawBody866_60

def rawBody866_62 : StackLang.HolProg 64 :=
.seq rawBody866_10 rawBody866_61

def rawBody866_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody866_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody866_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody866_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody866_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody866_70 : StackLang.HolProg 64 :=
.seq rawBody866_68 rawBody866_69

def rawBody866_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4526#64)

def rawBody866_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody866_74 : StackLang.HolProg 64 :=
.seq rawBody866_72 rawBody866_73

def rawBody866_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody866_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody866_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody866_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 866 5

def rawBody866_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody866_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody866_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody866_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody866_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody866_85 : StackLang.HolProg 64 :=
.seq rawBody866_83 rawBody866_84

def rawBody866_86 : StackLang.HolProg 64 :=
.seq rawBody866_82 rawBody866_85

def rawBody866_87 : StackLang.HolProg 64 :=
.seq rawBody866_81 rawBody866_86

def rawBody866_88 : StackLang.HolProg 64 :=
.seq rawBody866_80 rawBody866_87

def rawBody866_89 : StackLang.HolProg 64 :=
.seq rawBody866_79 rawBody866_88

def rawBody866_90 : StackLang.HolProg 64 :=
.seq rawBody866_78 rawBody866_89

def rawBody866_91 : StackLang.HolProg 64 :=
.seq rawBody866_77 rawBody866_90

def rawBody866_92 : StackLang.HolProg 64 :=
.seq rawBody866_76 rawBody866_91

def rawBody866_93 : StackLang.HolProg 64 :=
.seq rawBody866_75 rawBody866_92

def rawBody866_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody866_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody866_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody866_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody866_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody866_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody866_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody866_103 : StackLang.HolProg 64 :=
.seq rawBody866_101 rawBody866_102

def rawBody866_104 : StackLang.HolProg 64 :=
.seq rawBody866_100 rawBody866_103

def rawBody866_105 : StackLang.HolProg 64 :=
.seq rawBody866_99 rawBody866_104

def rawBody866_106 : StackLang.HolProg 64 :=
.seq rawBody866_98 rawBody866_105

def rawBody866_107 : StackLang.HolProg 64 :=
.seq rawBody866_97 rawBody866_106

def rawBody866_108 : StackLang.HolProg 64 :=
.seq rawBody866_96 rawBody866_107

def rawBody866_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody866_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody866_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody866_112 : StackLang.HolProg 64 :=
.seq rawBody866_110 rawBody866_111

def rawBody866_113 : StackLang.HolProg 64 :=
.seq rawBody866_109 rawBody866_112

def rawBody866_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody866_115 : StackLang.HolProg 64 :=
.seq rawBody866_113 rawBody866_114

def rawBody866_116 : StackLang.HolProg 64 :=
.call (some (rawBody866_108, 0, 866, 4)) (Sum.inl 77) (some (rawBody866_115, 866, 5))

def rawBody866_117 : StackLang.HolProg 64 :=
.seq rawBody866_95 rawBody866_116

def rawBody866_118 : StackLang.HolProg 64 :=
.seq rawBody866_94 rawBody866_117

def rawBody866_119 : StackLang.HolProg 64 :=
.seq rawBody866_93 rawBody866_118

def rawBody866_120 : StackLang.HolProg 64 :=
.seq rawBody866_74 rawBody866_119

def rawBody866_121 : StackLang.HolProg 64 :=
.seq rawBody866_71 rawBody866_120

def rawBody866_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody866_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody866_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody866_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody866_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551200#64))

def rawBody866_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def rawBody866_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody866_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 56#64))

def rawBody866_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody866_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody866_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551200#64))

def rawBody866_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 56#64))

def rawBody866_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody866_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody866_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody866_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody866_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551200#64))

def rawBody866_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody866_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody866_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody866_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody866_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody866_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody866_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def rawBody866_155 : StackLang.HolProg 64 :=
.seq rawBody866_153 rawBody866_154

def rawBody866_156 : StackLang.HolProg 64 :=
.seq rawBody866_152 rawBody866_155

def rawBody866_157 : StackLang.HolProg 64 :=
.seq rawBody866_151 rawBody866_156

def rawBody866_158 : StackLang.HolProg 64 :=
.seq rawBody866_150 rawBody866_157

def rawBody866_159 : StackLang.HolProg 64 :=
.seq rawBody866_149 rawBody866_158

def rawBody866_160 : StackLang.HolProg 64 :=
.seq rawBody866_148 rawBody866_159

def rawBody866_161 : StackLang.HolProg 64 :=
.seq rawBody866_147 rawBody866_160

def rawBody866_162 : StackLang.HolProg 64 :=
.seq rawBody866_146 rawBody866_161

def rawBody866_163 : StackLang.HolProg 64 :=
.seq rawBody866_145 rawBody866_162

def rawBody866_164 : StackLang.HolProg 64 :=
.seq rawBody866_144 rawBody866_163

def rawBody866_165 : StackLang.HolProg 64 :=
.seq rawBody866_143 rawBody866_164

def rawBody866_166 : StackLang.HolProg 64 :=
.seq rawBody866_142 rawBody866_165

def rawBody866_167 : StackLang.HolProg 64 :=
.seq rawBody866_141 rawBody866_166

def rawBody866_168 : StackLang.HolProg 64 :=
.seq rawBody866_140 rawBody866_167

def rawBody866_169 : StackLang.HolProg 64 :=
.seq rawBody866_139 rawBody866_168

def rawBody866_170 : StackLang.HolProg 64 :=
.seq rawBody866_138 rawBody866_169

def rawBody866_171 : StackLang.HolProg 64 :=
.seq rawBody866_137 rawBody866_170

def rawBody866_172 : StackLang.HolProg 64 :=
.seq rawBody866_136 rawBody866_171

def rawBody866_173 : StackLang.HolProg 64 :=
.seq rawBody866_135 rawBody866_172

def rawBody866_174 : StackLang.HolProg 64 :=
.seq rawBody866_134 rawBody866_173

def rawBody866_175 : StackLang.HolProg 64 :=
.seq rawBody866_133 rawBody866_174

def rawBody866_176 : StackLang.HolProg 64 :=
.seq rawBody866_132 rawBody866_175

def rawBody866_177 : StackLang.HolProg 64 :=
.seq rawBody866_131 rawBody866_176

def rawBody866_178 : StackLang.HolProg 64 :=
.seq rawBody866_130 rawBody866_177

def rawBody866_179 : StackLang.HolProg 64 :=
.seq rawBody866_129 rawBody866_178

def rawBody866_180 : StackLang.HolProg 64 :=
.seq rawBody866_128 rawBody866_179

def rawBody866_181 : StackLang.HolProg 64 :=
.seq rawBody866_127 rawBody866_180

def rawBody866_182 : StackLang.HolProg 64 :=
.seq rawBody866_126 rawBody866_181

def rawBody866_183 : StackLang.HolProg 64 :=
.seq rawBody866_125 rawBody866_182

def rawBody866_184 : StackLang.HolProg 64 :=
.seq rawBody866_124 rawBody866_183

def rawBody866_185 : StackLang.HolProg 64 :=
.seq rawBody866_123 rawBody866_184

def rawBody866_186 : StackLang.HolProg 64 :=
.seq rawBody866_122 rawBody866_185

def rawBody866_187 : StackLang.HolProg 64 :=
.seq rawBody866_121 rawBody866_186

def rawBody866_188 : StackLang.HolProg 64 :=
.seq rawBody866_70 rawBody866_187

def rawBody866_189 : StackLang.HolProg 64 :=
.seq rawBody866_67 rawBody866_188

def rawBody866_190 : StackLang.HolProg 64 :=
.seq rawBody866_66 rawBody866_189

def rawBody866_191 : StackLang.HolProg 64 :=
.seq rawBody866_65 rawBody866_190

def rawBody866_192 : StackLang.HolProg 64 :=
.seq rawBody866_64 rawBody866_191

def rawBody866_193 : StackLang.HolProg 64 :=
.seq rawBody866_63 rawBody866_192

def rawBody866_194 : StackLang.HolProg 64 :=
.seq rawBody866_62 rawBody866_193

def rawBody866_195 : StackLang.HolProg 64 :=
.seq rawBody866_9 rawBody866_194

def rawBody866_196 : StackLang.HolProg 64 :=
.seq rawBody866_2 rawBody866_195

def rawBody866_197 : StackLang.HolProg 64 :=
.seq rawBody866_1 rawBody866_196

def rawBody866_198 : StackLang.HolProg 64 :=
.seq rawBody866_0 rawBody866_197

def raw866 : StackLang.HolProg 64 := rawBody866_198
theorem raw866_eq : StackRawCall.compTop RawInfo.rawInfo (function866 (.list [])).1 = raw866 := by
  kernel_rfl
#print axioms raw866_eq
end InitECandidate.Proofs.BackendStages
