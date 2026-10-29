import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function656
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody656_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 15

def rawBody656_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody656_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody656_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody656_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody656_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def rawBody656_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6900#64)

def rawBody656_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 14

def rawBody656_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 13

def rawBody656_10 : StackLang.HolProg 64 :=
.seq rawBody656_8 rawBody656_9

def rawBody656_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2734#64)

def rawBody656_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_14 : StackLang.HolProg 64 :=
.seq rawBody656_12 rawBody656_13

def rawBody656_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody656_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody656_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 3

def rawBody656_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody656_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody656_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody656_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody656_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_25 : StackLang.HolProg 64 :=
.seq rawBody656_23 rawBody656_24

def rawBody656_26 : StackLang.HolProg 64 :=
.seq rawBody656_22 rawBody656_25

def rawBody656_27 : StackLang.HolProg 64 :=
.seq rawBody656_21 rawBody656_26

def rawBody656_28 : StackLang.HolProg 64 :=
.seq rawBody656_20 rawBody656_27

def rawBody656_29 : StackLang.HolProg 64 :=
.seq rawBody656_19 rawBody656_28

def rawBody656_30 : StackLang.HolProg 64 :=
.seq rawBody656_18 rawBody656_29

def rawBody656_31 : StackLang.HolProg 64 :=
.seq rawBody656_17 rawBody656_30

def rawBody656_32 : StackLang.HolProg 64 :=
.seq rawBody656_16 rawBody656_31

def rawBody656_33 : StackLang.HolProg 64 :=
.seq rawBody656_15 rawBody656_32

def rawBody656_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody656_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody656_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody656_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_41 : StackLang.HolProg 64 :=
.seq rawBody656_39 rawBody656_40

def rawBody656_42 : StackLang.HolProg 64 :=
.seq rawBody656_38 rawBody656_41

def rawBody656_43 : StackLang.HolProg 64 :=
.seq rawBody656_37 rawBody656_42

def rawBody656_44 : StackLang.HolProg 64 :=
.seq rawBody656_36 rawBody656_43

def rawBody656_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_46 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody656_47 : StackLang.HolProg 64 :=
.seq rawBody656_45 rawBody656_46

def rawBody656_48 : StackLang.HolProg 64 :=
.call (some (rawBody656_44, 0, 656, 2)) (Sum.inl 470) (some (rawBody656_47, 656, 3))

def rawBody656_49 : StackLang.HolProg 64 :=
.seq rawBody656_35 rawBody656_48

def rawBody656_50 : StackLang.HolProg 64 :=
.seq rawBody656_34 rawBody656_49

def rawBody656_51 : StackLang.HolProg 64 :=
.seq rawBody656_33 rawBody656_50

def rawBody656_52 : StackLang.HolProg 64 :=
.seq rawBody656_14 rawBody656_51

def rawBody656_53 : StackLang.HolProg 64 :=
.seq rawBody656_11 rawBody656_52

def rawBody656_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody656_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody656_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2735#64)

def rawBody656_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_60 : StackLang.HolProg 64 :=
.seq rawBody656_58 rawBody656_59

def rawBody656_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody656_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody656_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 5

def rawBody656_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody656_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody656_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody656_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody656_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_71 : StackLang.HolProg 64 :=
.seq rawBody656_69 rawBody656_70

def rawBody656_72 : StackLang.HolProg 64 :=
.seq rawBody656_68 rawBody656_71

def rawBody656_73 : StackLang.HolProg 64 :=
.seq rawBody656_67 rawBody656_72

def rawBody656_74 : StackLang.HolProg 64 :=
.seq rawBody656_66 rawBody656_73

def rawBody656_75 : StackLang.HolProg 64 :=
.seq rawBody656_65 rawBody656_74

def rawBody656_76 : StackLang.HolProg 64 :=
.seq rawBody656_64 rawBody656_75

def rawBody656_77 : StackLang.HolProg 64 :=
.seq rawBody656_63 rawBody656_76

def rawBody656_78 : StackLang.HolProg 64 :=
.seq rawBody656_62 rawBody656_77

def rawBody656_79 : StackLang.HolProg 64 :=
.seq rawBody656_61 rawBody656_78

def rawBody656_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody656_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody656_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody656_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody656_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 14

def rawBody656_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def rawBody656_89 : StackLang.HolProg 64 :=
.seq rawBody656_87 rawBody656_88

def rawBody656_90 : StackLang.HolProg 64 :=
.seq rawBody656_86 rawBody656_89

def rawBody656_91 : StackLang.HolProg 64 :=
.seq rawBody656_85 rawBody656_90

def rawBody656_92 : StackLang.HolProg 64 :=
.seq rawBody656_84 rawBody656_91

def rawBody656_93 : StackLang.HolProg 64 :=
.seq rawBody656_83 rawBody656_92

def rawBody656_94 : StackLang.HolProg 64 :=
.seq rawBody656_82 rawBody656_93

def rawBody656_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 14

def rawBody656_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def rawBody656_97 : StackLang.HolProg 64 :=
.seq rawBody656_95 rawBody656_96

def rawBody656_98 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody656_99 : StackLang.HolProg 64 :=
.seq rawBody656_97 rawBody656_98

def rawBody656_100 : StackLang.HolProg 64 :=
.call (some (rawBody656_94, 0, 656, 4)) (Sum.inl 68) (some (rawBody656_99, 656, 5))

def rawBody656_101 : StackLang.HolProg 64 :=
.seq rawBody656_81 rawBody656_100

def rawBody656_102 : StackLang.HolProg 64 :=
.seq rawBody656_80 rawBody656_101

def rawBody656_103 : StackLang.HolProg 64 :=
.seq rawBody656_79 rawBody656_102

def rawBody656_104 : StackLang.HolProg 64 :=
.seq rawBody656_60 rawBody656_103

def rawBody656_105 : StackLang.HolProg 64 :=
.seq rawBody656_57 rawBody656_104

def rawBody656_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody656_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody656_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody656_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody656_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody656_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def rawBody656_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody656_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody656_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody656_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody656_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody656_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 96#64))

def rawBody656_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 160#64)

def rawBody656_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody656_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody656_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 15

def rawBody656_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody656_129 : StackLang.HolProg 64 :=
.seq rawBody656_127 rawBody656_128

def rawBody656_130 : StackLang.HolProg 64 :=
.seq rawBody656_126 rawBody656_129

def rawBody656_131 : StackLang.HolProg 64 :=
.seq rawBody656_125 rawBody656_130

def rawBody656_132 : StackLang.HolProg 64 :=
.seq rawBody656_124 rawBody656_131

def rawBody656_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_134 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody656_132 rawBody656_133

def rawBody656_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody656_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody656_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def rawBody656_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody656_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def rawBody656_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 14

def rawBody656_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 13

def rawBody656_144 : StackLang.HolProg 64 :=
.seq rawBody656_142 rawBody656_143

def rawBody656_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2736#64)

def rawBody656_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_148 : StackLang.HolProg 64 :=
.seq rawBody656_146 rawBody656_147

def rawBody656_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody656_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody656_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 7

def rawBody656_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody656_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody656_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody656_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody656_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_159 : StackLang.HolProg 64 :=
.seq rawBody656_157 rawBody656_158

def rawBody656_160 : StackLang.HolProg 64 :=
.seq rawBody656_156 rawBody656_159

def rawBody656_161 : StackLang.HolProg 64 :=
.seq rawBody656_155 rawBody656_160

def rawBody656_162 : StackLang.HolProg 64 :=
.seq rawBody656_154 rawBody656_161

def rawBody656_163 : StackLang.HolProg 64 :=
.seq rawBody656_153 rawBody656_162

def rawBody656_164 : StackLang.HolProg 64 :=
.seq rawBody656_152 rawBody656_163

def rawBody656_165 : StackLang.HolProg 64 :=
.seq rawBody656_151 rawBody656_164

def rawBody656_166 : StackLang.HolProg 64 :=
.seq rawBody656_150 rawBody656_165

def rawBody656_167 : StackLang.HolProg 64 :=
.seq rawBody656_149 rawBody656_166

def rawBody656_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody656_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody656_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody656_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody656_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody656_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def rawBody656_177 : StackLang.HolProg 64 :=
.seq rawBody656_175 rawBody656_176

def rawBody656_178 : StackLang.HolProg 64 :=
.seq rawBody656_174 rawBody656_177

def rawBody656_179 : StackLang.HolProg 64 :=
.seq rawBody656_173 rawBody656_178

def rawBody656_180 : StackLang.HolProg 64 :=
.seq rawBody656_172 rawBody656_179

def rawBody656_181 : StackLang.HolProg 64 :=
.seq rawBody656_171 rawBody656_180

def rawBody656_182 : StackLang.HolProg 64 :=
.seq rawBody656_170 rawBody656_181

def rawBody656_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def rawBody656_184 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody656_185 : StackLang.HolProg 64 :=
.seq rawBody656_183 rawBody656_184

def rawBody656_186 : StackLang.HolProg 64 :=
.call (some (rawBody656_182, 0, 656, 6)) (Sum.inl 146) (some (rawBody656_185, 656, 7))

def rawBody656_187 : StackLang.HolProg 64 :=
.seq rawBody656_169 rawBody656_186

def rawBody656_188 : StackLang.HolProg 64 :=
.seq rawBody656_168 rawBody656_187

def rawBody656_189 : StackLang.HolProg 64 :=
.seq rawBody656_167 rawBody656_188

def rawBody656_190 : StackLang.HolProg 64 :=
.seq rawBody656_148 rawBody656_189

def rawBody656_191 : StackLang.HolProg 64 :=
.seq rawBody656_145 rawBody656_190

def rawBody656_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody656_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody656_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def rawBody656_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 13

def rawBody656_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 9

def rawBody656_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody656_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody656_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 1

def rawBody656_201 : StackLang.HolProg 64 :=
.seq rawBody656_199 rawBody656_200

def rawBody656_202 : StackLang.HolProg 64 :=
.seq rawBody656_198 rawBody656_201

def rawBody656_203 : StackLang.HolProg 64 :=
.seq rawBody656_197 rawBody656_202

def rawBody656_204 : StackLang.HolProg 64 :=
.seq rawBody656_196 rawBody656_203

def rawBody656_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2737#64)

def rawBody656_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_208 : StackLang.HolProg 64 :=
.seq rawBody656_206 rawBody656_207

def rawBody656_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody656_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody656_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 9

def rawBody656_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody656_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody656_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody656_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody656_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_219 : StackLang.HolProg 64 :=
.seq rawBody656_217 rawBody656_218

def rawBody656_220 : StackLang.HolProg 64 :=
.seq rawBody656_216 rawBody656_219

def rawBody656_221 : StackLang.HolProg 64 :=
.seq rawBody656_215 rawBody656_220

def rawBody656_222 : StackLang.HolProg 64 :=
.seq rawBody656_214 rawBody656_221

def rawBody656_223 : StackLang.HolProg 64 :=
.seq rawBody656_213 rawBody656_222

def rawBody656_224 : StackLang.HolProg 64 :=
.seq rawBody656_212 rawBody656_223

def rawBody656_225 : StackLang.HolProg 64 :=
.seq rawBody656_211 rawBody656_224

def rawBody656_226 : StackLang.HolProg 64 :=
.seq rawBody656_210 rawBody656_225

def rawBody656_227 : StackLang.HolProg 64 :=
.seq rawBody656_209 rawBody656_226

def rawBody656_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody656_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody656_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody656_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody656_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody656_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 13

def rawBody656_237 : StackLang.HolProg 64 :=
.seq rawBody656_235 rawBody656_236

def rawBody656_238 : StackLang.HolProg 64 :=
.seq rawBody656_234 rawBody656_237

def rawBody656_239 : StackLang.HolProg 64 :=
.seq rawBody656_233 rawBody656_238

def rawBody656_240 : StackLang.HolProg 64 :=
.seq rawBody656_232 rawBody656_239

def rawBody656_241 : StackLang.HolProg 64 :=
.seq rawBody656_231 rawBody656_240

def rawBody656_242 : StackLang.HolProg 64 :=
.seq rawBody656_230 rawBody656_241

def rawBody656_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 13

def rawBody656_244 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody656_245 : StackLang.HolProg 64 :=
.seq rawBody656_243 rawBody656_244

def rawBody656_246 : StackLang.HolProg 64 :=
.call (some (rawBody656_242, 0, 656, 8)) (Sum.inl 146) (some (rawBody656_245, 656, 9))

def rawBody656_247 : StackLang.HolProg 64 :=
.seq rawBody656_229 rawBody656_246

def rawBody656_248 : StackLang.HolProg 64 :=
.seq rawBody656_228 rawBody656_247

def rawBody656_249 : StackLang.HolProg 64 :=
.seq rawBody656_227 rawBody656_248

def rawBody656_250 : StackLang.HolProg 64 :=
.seq rawBody656_208 rawBody656_249

def rawBody656_251 : StackLang.HolProg 64 :=
.seq rawBody656_205 rawBody656_250

def rawBody656_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody656_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def rawBody656_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def rawBody656_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 13

def rawBody656_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 12

def rawBody656_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 11

def rawBody656_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def rawBody656_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody656_261 : StackLang.HolProg 64 :=
.seq rawBody656_259 rawBody656_260

def rawBody656_262 : StackLang.HolProg 64 :=
.seq rawBody656_258 rawBody656_261

def rawBody656_263 : StackLang.HolProg 64 :=
.seq rawBody656_257 rawBody656_262

def rawBody656_264 : StackLang.HolProg 64 :=
.seq rawBody656_256 rawBody656_263

def rawBody656_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2738#64)

def rawBody656_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_268 : StackLang.HolProg 64 :=
.seq rawBody656_266 rawBody656_267

def rawBody656_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody656_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody656_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 11

def rawBody656_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody656_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody656_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody656_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody656_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_279 : StackLang.HolProg 64 :=
.seq rawBody656_277 rawBody656_278

def rawBody656_280 : StackLang.HolProg 64 :=
.seq rawBody656_276 rawBody656_279

def rawBody656_281 : StackLang.HolProg 64 :=
.seq rawBody656_275 rawBody656_280

def rawBody656_282 : StackLang.HolProg 64 :=
.seq rawBody656_274 rawBody656_281

def rawBody656_283 : StackLang.HolProg 64 :=
.seq rawBody656_273 rawBody656_282

def rawBody656_284 : StackLang.HolProg 64 :=
.seq rawBody656_272 rawBody656_283

def rawBody656_285 : StackLang.HolProg 64 :=
.seq rawBody656_271 rawBody656_284

def rawBody656_286 : StackLang.HolProg 64 :=
.seq rawBody656_270 rawBody656_285

def rawBody656_287 : StackLang.HolProg 64 :=
.seq rawBody656_269 rawBody656_286

def rawBody656_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody656_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody656_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody656_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody656_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody656_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def rawBody656_297 : StackLang.HolProg 64 :=
.seq rawBody656_295 rawBody656_296

def rawBody656_298 : StackLang.HolProg 64 :=
.seq rawBody656_294 rawBody656_297

def rawBody656_299 : StackLang.HolProg 64 :=
.seq rawBody656_293 rawBody656_298

def rawBody656_300 : StackLang.HolProg 64 :=
.seq rawBody656_292 rawBody656_299

def rawBody656_301 : StackLang.HolProg 64 :=
.seq rawBody656_291 rawBody656_300

def rawBody656_302 : StackLang.HolProg 64 :=
.seq rawBody656_290 rawBody656_301

def rawBody656_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def rawBody656_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody656_305 : StackLang.HolProg 64 :=
.seq rawBody656_303 rawBody656_304

def rawBody656_306 : StackLang.HolProg 64 :=
.call (some (rawBody656_302, 0, 656, 10)) (Sum.inl 146) (some (rawBody656_305, 656, 11))

def rawBody656_307 : StackLang.HolProg 64 :=
.seq rawBody656_289 rawBody656_306

def rawBody656_308 : StackLang.HolProg 64 :=
.seq rawBody656_288 rawBody656_307

def rawBody656_309 : StackLang.HolProg 64 :=
.seq rawBody656_287 rawBody656_308

def rawBody656_310 : StackLang.HolProg 64 :=
.seq rawBody656_268 rawBody656_309

def rawBody656_311 : StackLang.HolProg 64 :=
.seq rawBody656_265 rawBody656_310

def rawBody656_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody656_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody656_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def rawBody656_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 11

def rawBody656_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 10

def rawBody656_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 8

def rawBody656_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 6

def rawBody656_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def rawBody656_321 : StackLang.HolProg 64 :=
.seq rawBody656_319 rawBody656_320

def rawBody656_322 : StackLang.HolProg 64 :=
.seq rawBody656_318 rawBody656_321

def rawBody656_323 : StackLang.HolProg 64 :=
.seq rawBody656_317 rawBody656_322

def rawBody656_324 : StackLang.HolProg 64 :=
.seq rawBody656_316 rawBody656_323

def rawBody656_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2739#64)

def rawBody656_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_328 : StackLang.HolProg 64 :=
.seq rawBody656_326 rawBody656_327

def rawBody656_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody656_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody656_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 13

def rawBody656_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody656_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody656_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody656_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody656_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_339 : StackLang.HolProg 64 :=
.seq rawBody656_337 rawBody656_338

def rawBody656_340 : StackLang.HolProg 64 :=
.seq rawBody656_336 rawBody656_339

def rawBody656_341 : StackLang.HolProg 64 :=
.seq rawBody656_335 rawBody656_340

def rawBody656_342 : StackLang.HolProg 64 :=
.seq rawBody656_334 rawBody656_341

def rawBody656_343 : StackLang.HolProg 64 :=
.seq rawBody656_333 rawBody656_342

def rawBody656_344 : StackLang.HolProg 64 :=
.seq rawBody656_332 rawBody656_343

def rawBody656_345 : StackLang.HolProg 64 :=
.seq rawBody656_331 rawBody656_344

def rawBody656_346 : StackLang.HolProg 64 :=
.seq rawBody656_330 rawBody656_345

def rawBody656_347 : StackLang.HolProg 64 :=
.seq rawBody656_329 rawBody656_346

def rawBody656_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody656_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody656_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody656_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody656_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 17 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody656_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 16 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody656_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 15 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody656_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 13

def rawBody656_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def rawBody656_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def rawBody656_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 10

def rawBody656_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def rawBody656_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 8

def rawBody656_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody656_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 6

def rawBody656_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 5

def rawBody656_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody656_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody656_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 2

def rawBody656_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody656_371 : StackLang.HolProg 64 :=
.seq rawBody656_369 rawBody656_370

def rawBody656_372 : StackLang.HolProg 64 :=
.seq rawBody656_368 rawBody656_371

def rawBody656_373 : StackLang.HolProg 64 :=
.seq rawBody656_367 rawBody656_372

def rawBody656_374 : StackLang.HolProg 64 :=
.seq rawBody656_366 rawBody656_373

def rawBody656_375 : StackLang.HolProg 64 :=
.seq rawBody656_365 rawBody656_374

def rawBody656_376 : StackLang.HolProg 64 :=
.seq rawBody656_364 rawBody656_375

def rawBody656_377 : StackLang.HolProg 64 :=
.seq rawBody656_363 rawBody656_376

def rawBody656_378 : StackLang.HolProg 64 :=
.seq rawBody656_362 rawBody656_377

def rawBody656_379 : StackLang.HolProg 64 :=
.seq rawBody656_361 rawBody656_378

def rawBody656_380 : StackLang.HolProg 64 :=
.seq rawBody656_360 rawBody656_379

def rawBody656_381 : StackLang.HolProg 64 :=
.seq rawBody656_359 rawBody656_380

def rawBody656_382 : StackLang.HolProg 64 :=
.seq rawBody656_358 rawBody656_381

def rawBody656_383 : StackLang.HolProg 64 :=
.seq rawBody656_357 rawBody656_382

def rawBody656_384 : StackLang.HolProg 64 :=
.seq rawBody656_356 rawBody656_383

def rawBody656_385 : StackLang.HolProg 64 :=
.seq rawBody656_355 rawBody656_384

def rawBody656_386 : StackLang.HolProg 64 :=
.seq rawBody656_354 rawBody656_385

def rawBody656_387 : StackLang.HolProg 64 :=
.seq rawBody656_353 rawBody656_386

def rawBody656_388 : StackLang.HolProg 64 :=
.seq rawBody656_352 rawBody656_387

def rawBody656_389 : StackLang.HolProg 64 :=
.seq rawBody656_351 rawBody656_388

def rawBody656_390 : StackLang.HolProg 64 :=
.seq rawBody656_350 rawBody656_389

def rawBody656_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 13

def rawBody656_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def rawBody656_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def rawBody656_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 10

def rawBody656_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def rawBody656_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 8

def rawBody656_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody656_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 6

def rawBody656_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 5

def rawBody656_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody656_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody656_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 2

def rawBody656_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody656_404 : StackLang.HolProg 64 :=
.seq rawBody656_402 rawBody656_403

def rawBody656_405 : StackLang.HolProg 64 :=
.seq rawBody656_401 rawBody656_404

def rawBody656_406 : StackLang.HolProg 64 :=
.seq rawBody656_400 rawBody656_405

def rawBody656_407 : StackLang.HolProg 64 :=
.seq rawBody656_399 rawBody656_406

def rawBody656_408 : StackLang.HolProg 64 :=
.seq rawBody656_398 rawBody656_407

def rawBody656_409 : StackLang.HolProg 64 :=
.seq rawBody656_397 rawBody656_408

def rawBody656_410 : StackLang.HolProg 64 :=
.seq rawBody656_396 rawBody656_409

def rawBody656_411 : StackLang.HolProg 64 :=
.seq rawBody656_395 rawBody656_410

def rawBody656_412 : StackLang.HolProg 64 :=
.seq rawBody656_394 rawBody656_411

def rawBody656_413 : StackLang.HolProg 64 :=
.seq rawBody656_393 rawBody656_412

def rawBody656_414 : StackLang.HolProg 64 :=
.seq rawBody656_392 rawBody656_413

def rawBody656_415 : StackLang.HolProg 64 :=
.seq rawBody656_391 rawBody656_414

def rawBody656_416 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody656_417 : StackLang.HolProg 64 :=
.seq rawBody656_415 rawBody656_416

def rawBody656_418 : StackLang.HolProg 64 :=
.call (some (rawBody656_390, 0, 656, 12)) (Sum.inl 146) (some (rawBody656_417, 656, 13))

def rawBody656_419 : StackLang.HolProg 64 :=
.seq rawBody656_349 rawBody656_418

def rawBody656_420 : StackLang.HolProg 64 :=
.seq rawBody656_348 rawBody656_419

def rawBody656_421 : StackLang.HolProg 64 :=
.seq rawBody656_347 rawBody656_420

def rawBody656_422 : StackLang.HolProg 64 :=
.seq rawBody656_328 rawBody656_421

def rawBody656_423 : StackLang.HolProg 64 :=
.seq rawBody656_325 rawBody656_422

def rawBody656_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody656_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody656_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2740#64)

def rawBody656_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_429 : StackLang.HolProg 64 :=
.seq rawBody656_427 rawBody656_428

def rawBody656_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody656_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody656_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 15

def rawBody656_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody656_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody656_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody656_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody656_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_440 : StackLang.HolProg 64 :=
.seq rawBody656_438 rawBody656_439

def rawBody656_441 : StackLang.HolProg 64 :=
.seq rawBody656_437 rawBody656_440

def rawBody656_442 : StackLang.HolProg 64 :=
.seq rawBody656_436 rawBody656_441

def rawBody656_443 : StackLang.HolProg 64 :=
.seq rawBody656_435 rawBody656_442

def rawBody656_444 : StackLang.HolProg 64 :=
.seq rawBody656_434 rawBody656_443

def rawBody656_445 : StackLang.HolProg 64 :=
.seq rawBody656_433 rawBody656_444

def rawBody656_446 : StackLang.HolProg 64 :=
.seq rawBody656_432 rawBody656_445

def rawBody656_447 : StackLang.HolProg 64 :=
.seq rawBody656_431 rawBody656_446

def rawBody656_448 : StackLang.HolProg 64 :=
.seq rawBody656_430 rawBody656_447

def rawBody656_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody656_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody656_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody656_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody656_456 : StackLang.HolProg 64 :=
.seq rawBody656_454 rawBody656_455

def rawBody656_457 : StackLang.HolProg 64 :=
.seq rawBody656_453 rawBody656_456

def rawBody656_458 : StackLang.HolProg 64 :=
.seq rawBody656_452 rawBody656_457

def rawBody656_459 : StackLang.HolProg 64 :=
.seq rawBody656_451 rawBody656_458

def rawBody656_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_461 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody656_462 : StackLang.HolProg 64 :=
.seq rawBody656_460 rawBody656_461

def rawBody656_463 : StackLang.HolProg 64 :=
.call (some (rawBody656_459, 0, 656, 14)) (Sum.inl 655) (some (rawBody656_462, 656, 15))

def rawBody656_464 : StackLang.HolProg 64 :=
.seq rawBody656_450 rawBody656_463

def rawBody656_465 : StackLang.HolProg 64 :=
.seq rawBody656_449 rawBody656_464

def rawBody656_466 : StackLang.HolProg 64 :=
.seq rawBody656_448 rawBody656_465

def rawBody656_467 : StackLang.HolProg 64 :=
.seq rawBody656_429 rawBody656_466

def rawBody656_468 : StackLang.HolProg 64 :=
.seq rawBody656_426 rawBody656_467

def rawBody656_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody656_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody656_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody656_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody656_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2741#64)

def rawBody656_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_478 : StackLang.HolProg 64 :=
.seq rawBody656_476 rawBody656_477

def rawBody656_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody656_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody656_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 17

def rawBody656_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody656_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody656_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody656_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody656_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_489 : StackLang.HolProg 64 :=
.seq rawBody656_487 rawBody656_488

def rawBody656_490 : StackLang.HolProg 64 :=
.seq rawBody656_486 rawBody656_489

def rawBody656_491 : StackLang.HolProg 64 :=
.seq rawBody656_485 rawBody656_490

def rawBody656_492 : StackLang.HolProg 64 :=
.seq rawBody656_484 rawBody656_491

def rawBody656_493 : StackLang.HolProg 64 :=
.seq rawBody656_483 rawBody656_492

def rawBody656_494 : StackLang.HolProg 64 :=
.seq rawBody656_482 rawBody656_493

def rawBody656_495 : StackLang.HolProg 64 :=
.seq rawBody656_481 rawBody656_494

def rawBody656_496 : StackLang.HolProg 64 :=
.seq rawBody656_480 rawBody656_495

def rawBody656_497 : StackLang.HolProg 64 :=
.seq rawBody656_479 rawBody656_496

def rawBody656_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody656_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody656_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody656_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody656_505 : StackLang.HolProg 64 :=
.seq rawBody656_503 rawBody656_504

def rawBody656_506 : StackLang.HolProg 64 :=
.seq rawBody656_502 rawBody656_505

def rawBody656_507 : StackLang.HolProg 64 :=
.seq rawBody656_501 rawBody656_506

def rawBody656_508 : StackLang.HolProg 64 :=
.seq rawBody656_500 rawBody656_507

def rawBody656_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_510 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody656_511 : StackLang.HolProg 64 :=
.seq rawBody656_509 rawBody656_510

def rawBody656_512 : StackLang.HolProg 64 :=
.call (some (rawBody656_508, 0, 656, 16)) (Sum.inl 68) (some (rawBody656_511, 656, 17))

def rawBody656_513 : StackLang.HolProg 64 :=
.seq rawBody656_499 rawBody656_512

def rawBody656_514 : StackLang.HolProg 64 :=
.seq rawBody656_498 rawBody656_513

def rawBody656_515 : StackLang.HolProg 64 :=
.seq rawBody656_497 rawBody656_514

def rawBody656_516 : StackLang.HolProg 64 :=
.seq rawBody656_478 rawBody656_515

def rawBody656_517 : StackLang.HolProg 64 :=
.seq rawBody656_475 rawBody656_516

def rawBody656_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody656_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody656_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def rawBody656_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 13

def rawBody656_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2742#64)

def rawBody656_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_525 : StackLang.HolProg 64 :=
.seq rawBody656_523 rawBody656_524

def rawBody656_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody656_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody656_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody656_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 19

def rawBody656_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody656_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody656_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody656_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody656_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_536 : StackLang.HolProg 64 :=
.seq rawBody656_534 rawBody656_535

def rawBody656_537 : StackLang.HolProg 64 :=
.seq rawBody656_533 rawBody656_536

def rawBody656_538 : StackLang.HolProg 64 :=
.seq rawBody656_532 rawBody656_537

def rawBody656_539 : StackLang.HolProg 64 :=
.seq rawBody656_531 rawBody656_538

def rawBody656_540 : StackLang.HolProg 64 :=
.seq rawBody656_530 rawBody656_539

def rawBody656_541 : StackLang.HolProg 64 :=
.seq rawBody656_529 rawBody656_540

def rawBody656_542 : StackLang.HolProg 64 :=
.seq rawBody656_528 rawBody656_541

def rawBody656_543 : StackLang.HolProg 64 :=
.seq rawBody656_527 rawBody656_542

def rawBody656_544 : StackLang.HolProg 64 :=
.seq rawBody656_526 rawBody656_543

def rawBody656_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody656_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody656_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody656_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody656_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 14

def rawBody656_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 13

def rawBody656_553 : StackLang.HolProg 64 :=
.seq rawBody656_551 rawBody656_552

def rawBody656_554 : StackLang.HolProg 64 :=
.seq rawBody656_550 rawBody656_553

def rawBody656_555 : StackLang.HolProg 64 :=
.seq rawBody656_549 rawBody656_554

def rawBody656_556 : StackLang.HolProg 64 :=
.seq rawBody656_548 rawBody656_555

def rawBody656_557 : StackLang.HolProg 64 :=
.seq rawBody656_547 rawBody656_556

def rawBody656_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 14

def rawBody656_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 13

def rawBody656_560 : StackLang.HolProg 64 :=
.seq rawBody656_558 rawBody656_559

def rawBody656_561 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody656_562 : StackLang.HolProg 64 :=
.seq rawBody656_560 rawBody656_561

def rawBody656_563 : StackLang.HolProg 64 :=
.call (some (rawBody656_557, 0, 656, 18)) (Sum.inl 78) (some (rawBody656_562, 656, 19))

def rawBody656_564 : StackLang.HolProg 64 :=
.seq rawBody656_546 rawBody656_563

def rawBody656_565 : StackLang.HolProg 64 :=
.seq rawBody656_545 rawBody656_564

def rawBody656_566 : StackLang.HolProg 64 :=
.seq rawBody656_544 rawBody656_565

def rawBody656_567 : StackLang.HolProg 64 :=
.seq rawBody656_525 rawBody656_566

def rawBody656_568 : StackLang.HolProg 64 :=
.seq rawBody656_522 rawBody656_567

def rawBody656_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody656_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 31#64)))

def rawBody656_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody656_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody656_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody656_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody656_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody656_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody656_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def rawBody656_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody656_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody656_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody656_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def rawBody656_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody656_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_588 : StackLang.HolProg 64 :=
.seq rawBody656_586 rawBody656_587

def rawBody656_589 : StackLang.HolProg 64 :=
.seq rawBody656_585 rawBody656_588

def rawBody656_590 : StackLang.HolProg 64 :=
.seq rawBody656_584 rawBody656_589

def rawBody656_591 : StackLang.HolProg 64 :=
.seq rawBody656_583 rawBody656_590

def rawBody656_592 : StackLang.HolProg 64 :=
.seq rawBody656_582 rawBody656_591

def rawBody656_593 : StackLang.HolProg 64 :=
.seq rawBody656_581 rawBody656_592

def rawBody656_594 : StackLang.HolProg 64 :=
.seq rawBody656_580 rawBody656_593

def rawBody656_595 : StackLang.HolProg 64 :=
.seq rawBody656_579 rawBody656_594

def rawBody656_596 : StackLang.HolProg 64 :=
.seq rawBody656_578 rawBody656_595

def rawBody656_597 : StackLang.HolProg 64 :=
.seq rawBody656_577 rawBody656_596

def rawBody656_598 : StackLang.HolProg 64 :=
.seq rawBody656_576 rawBody656_597

def rawBody656_599 : StackLang.HolProg 64 :=
.seq rawBody656_575 rawBody656_598

def rawBody656_600 : StackLang.HolProg 64 :=
.seq rawBody656_574 rawBody656_599

def rawBody656_601 : StackLang.HolProg 64 :=
.seq rawBody656_573 rawBody656_600

def rawBody656_602 : StackLang.HolProg 64 :=
.seq rawBody656_572 rawBody656_601

def rawBody656_603 : StackLang.HolProg 64 :=
.seq rawBody656_571 rawBody656_602

def rawBody656_604 : StackLang.HolProg 64 :=
.seq rawBody656_570 rawBody656_603

def rawBody656_605 : StackLang.HolProg 64 :=
.seq rawBody656_569 rawBody656_604

def rawBody656_606 : StackLang.HolProg 64 :=
.seq rawBody656_568 rawBody656_605

def rawBody656_607 : StackLang.HolProg 64 :=
.seq rawBody656_521 rawBody656_606

def rawBody656_608 : StackLang.HolProg 64 :=
.seq rawBody656_520 rawBody656_607

def rawBody656_609 : StackLang.HolProg 64 :=
.seq rawBody656_519 rawBody656_608

def rawBody656_610 : StackLang.HolProg 64 :=
.seq rawBody656_518 rawBody656_609

def rawBody656_611 : StackLang.HolProg 64 :=
.seq rawBody656_517 rawBody656_610

def rawBody656_612 : StackLang.HolProg 64 :=
.seq rawBody656_474 rawBody656_611

def rawBody656_613 : StackLang.HolProg 64 :=
.seq rawBody656_473 rawBody656_612

def rawBody656_614 : StackLang.HolProg 64 :=
.seq rawBody656_472 rawBody656_613

def rawBody656_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody656_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 14

def rawBody656_617 : StackLang.HolProg 64 :=
.seq rawBody656_615 rawBody656_616

def rawBody656_618 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody656_614 rawBody656_617

def rawBody656_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody656_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody656_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody656_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 15

def rawBody656_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody656_624 : StackLang.HolProg 64 :=
.seq rawBody656_622 rawBody656_623

def rawBody656_625 : StackLang.HolProg 64 :=
.seq rawBody656_621 rawBody656_624

def rawBody656_626 : StackLang.HolProg 64 :=
.seq rawBody656_620 rawBody656_625

def rawBody656_627 : StackLang.HolProg 64 :=
.seq rawBody656_619 rawBody656_626

def rawBody656_628 : StackLang.HolProg 64 :=
.seq rawBody656_618 rawBody656_627

def rawBody656_629 : StackLang.HolProg 64 :=
.seq rawBody656_471 rawBody656_628

def rawBody656_630 : StackLang.HolProg 64 :=
.seq rawBody656_470 rawBody656_629

def rawBody656_631 : StackLang.HolProg 64 :=
.seq rawBody656_469 rawBody656_630

def rawBody656_632 : StackLang.HolProg 64 :=
.seq rawBody656_468 rawBody656_631

def rawBody656_633 : StackLang.HolProg 64 :=
.seq rawBody656_425 rawBody656_632

def rawBody656_634 : StackLang.HolProg 64 :=
.seq rawBody656_424 rawBody656_633

def rawBody656_635 : StackLang.HolProg 64 :=
.seq rawBody656_423 rawBody656_634

def rawBody656_636 : StackLang.HolProg 64 :=
.seq rawBody656_324 rawBody656_635

def rawBody656_637 : StackLang.HolProg 64 :=
.seq rawBody656_315 rawBody656_636

def rawBody656_638 : StackLang.HolProg 64 :=
.seq rawBody656_314 rawBody656_637

def rawBody656_639 : StackLang.HolProg 64 :=
.seq rawBody656_313 rawBody656_638

def rawBody656_640 : StackLang.HolProg 64 :=
.seq rawBody656_312 rawBody656_639

def rawBody656_641 : StackLang.HolProg 64 :=
.seq rawBody656_311 rawBody656_640

def rawBody656_642 : StackLang.HolProg 64 :=
.seq rawBody656_264 rawBody656_641

def rawBody656_643 : StackLang.HolProg 64 :=
.seq rawBody656_255 rawBody656_642

def rawBody656_644 : StackLang.HolProg 64 :=
.seq rawBody656_254 rawBody656_643

def rawBody656_645 : StackLang.HolProg 64 :=
.seq rawBody656_253 rawBody656_644

def rawBody656_646 : StackLang.HolProg 64 :=
.seq rawBody656_252 rawBody656_645

def rawBody656_647 : StackLang.HolProg 64 :=
.seq rawBody656_251 rawBody656_646

def rawBody656_648 : StackLang.HolProg 64 :=
.seq rawBody656_204 rawBody656_647

def rawBody656_649 : StackLang.HolProg 64 :=
.seq rawBody656_195 rawBody656_648

def rawBody656_650 : StackLang.HolProg 64 :=
.seq rawBody656_194 rawBody656_649

def rawBody656_651 : StackLang.HolProg 64 :=
.seq rawBody656_193 rawBody656_650

def rawBody656_652 : StackLang.HolProg 64 :=
.seq rawBody656_192 rawBody656_651

def rawBody656_653 : StackLang.HolProg 64 :=
.seq rawBody656_191 rawBody656_652

def rawBody656_654 : StackLang.HolProg 64 :=
.seq rawBody656_144 rawBody656_653

def rawBody656_655 : StackLang.HolProg 64 :=
.seq rawBody656_141 rawBody656_654

def rawBody656_656 : StackLang.HolProg 64 :=
.seq rawBody656_140 rawBody656_655

def rawBody656_657 : StackLang.HolProg 64 :=
.seq rawBody656_139 rawBody656_656

def rawBody656_658 : StackLang.HolProg 64 :=
.seq rawBody656_138 rawBody656_657

def rawBody656_659 : StackLang.HolProg 64 :=
.seq rawBody656_137 rawBody656_658

def rawBody656_660 : StackLang.HolProg 64 :=
.seq rawBody656_136 rawBody656_659

def rawBody656_661 : StackLang.HolProg 64 :=
.seq rawBody656_135 rawBody656_660

def rawBody656_662 : StackLang.HolProg 64 :=
.seq rawBody656_134 rawBody656_661

def rawBody656_663 : StackLang.HolProg 64 :=
.seq rawBody656_123 rawBody656_662

def rawBody656_664 : StackLang.HolProg 64 :=
.seq rawBody656_122 rawBody656_663

def rawBody656_665 : StackLang.HolProg 64 :=
.seq rawBody656_121 rawBody656_664

def rawBody656_666 : StackLang.HolProg 64 :=
.seq rawBody656_120 rawBody656_665

def rawBody656_667 : StackLang.HolProg 64 :=
.seq rawBody656_119 rawBody656_666

def rawBody656_668 : StackLang.HolProg 64 :=
.seq rawBody656_118 rawBody656_667

def rawBody656_669 : StackLang.HolProg 64 :=
.seq rawBody656_117 rawBody656_668

def rawBody656_670 : StackLang.HolProg 64 :=
.seq rawBody656_116 rawBody656_669

def rawBody656_671 : StackLang.HolProg 64 :=
.seq rawBody656_115 rawBody656_670

def rawBody656_672 : StackLang.HolProg 64 :=
.seq rawBody656_114 rawBody656_671

def rawBody656_673 : StackLang.HolProg 64 :=
.seq rawBody656_113 rawBody656_672

def rawBody656_674 : StackLang.HolProg 64 :=
.seq rawBody656_112 rawBody656_673

def rawBody656_675 : StackLang.HolProg 64 :=
.seq rawBody656_111 rawBody656_674

def rawBody656_676 : StackLang.HolProg 64 :=
.seq rawBody656_110 rawBody656_675

def rawBody656_677 : StackLang.HolProg 64 :=
.seq rawBody656_109 rawBody656_676

def rawBody656_678 : StackLang.HolProg 64 :=
.seq rawBody656_108 rawBody656_677

def rawBody656_679 : StackLang.HolProg 64 :=
.seq rawBody656_107 rawBody656_678

def rawBody656_680 : StackLang.HolProg 64 :=
.seq rawBody656_106 rawBody656_679

def rawBody656_681 : StackLang.HolProg 64 :=
.seq rawBody656_105 rawBody656_680

def rawBody656_682 : StackLang.HolProg 64 :=
.seq rawBody656_56 rawBody656_681

def rawBody656_683 : StackLang.HolProg 64 :=
.seq rawBody656_55 rawBody656_682

def rawBody656_684 : StackLang.HolProg 64 :=
.seq rawBody656_54 rawBody656_683

def rawBody656_685 : StackLang.HolProg 64 :=
.seq rawBody656_53 rawBody656_684

def rawBody656_686 : StackLang.HolProg 64 :=
.seq rawBody656_10 rawBody656_685

def rawBody656_687 : StackLang.HolProg 64 :=
.seq rawBody656_7 rawBody656_686

def rawBody656_688 : StackLang.HolProg 64 :=
.seq rawBody656_6 rawBody656_687

def rawBody656_689 : StackLang.HolProg 64 :=
.seq rawBody656_5 rawBody656_688

def rawBody656_690 : StackLang.HolProg 64 :=
.seq rawBody656_4 rawBody656_689

def rawBody656_691 : StackLang.HolProg 64 :=
.seq rawBody656_3 rawBody656_690

def rawBody656_692 : StackLang.HolProg 64 :=
.seq rawBody656_2 rawBody656_691

def rawBody656_693 : StackLang.HolProg 64 :=
.seq rawBody656_1 rawBody656_692

def rawBody656_694 : StackLang.HolProg 64 :=
.seq rawBody656_0 rawBody656_693

def raw656 : StackLang.HolProg 64 := rawBody656_694
theorem raw656_eq : StackRawCall.compTop RawInfo.rawInfo (function656 (.list [])).1 = raw656 := by
  kernel_rfl
#print axioms raw656_eq
end InitECandidate.Proofs.BackendStages
