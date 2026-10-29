import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function605
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody605_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody605_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody605_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody605_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody605_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody605_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def rawBody605_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody605_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 152#64))

def rawBody605_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody605_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody605_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody605_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody605_15 : StackLang.HolProg 64 :=
.seq rawBody605_13 rawBody605_14

def rawBody605_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2315#64)

def rawBody605_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody605_19 : StackLang.HolProg 64 :=
.seq rawBody605_17 rawBody605_18

def rawBody605_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody605_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody605_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody605_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 605 3

def rawBody605_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody605_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody605_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody605_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody605_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody605_30 : StackLang.HolProg 64 :=
.seq rawBody605_28 rawBody605_29

def rawBody605_31 : StackLang.HolProg 64 :=
.seq rawBody605_27 rawBody605_30

def rawBody605_32 : StackLang.HolProg 64 :=
.seq rawBody605_26 rawBody605_31

def rawBody605_33 : StackLang.HolProg 64 :=
.seq rawBody605_25 rawBody605_32

def rawBody605_34 : StackLang.HolProg 64 :=
.seq rawBody605_24 rawBody605_33

def rawBody605_35 : StackLang.HolProg 64 :=
.seq rawBody605_23 rawBody605_34

def rawBody605_36 : StackLang.HolProg 64 :=
.seq rawBody605_22 rawBody605_35

def rawBody605_37 : StackLang.HolProg 64 :=
.seq rawBody605_21 rawBody605_36

def rawBody605_38 : StackLang.HolProg 64 :=
.seq rawBody605_20 rawBody605_37

def rawBody605_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody605_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody605_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody605_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody605_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_46 : StackLang.HolProg 64 :=
.seq rawBody605_44 rawBody605_45

def rawBody605_47 : StackLang.HolProg 64 :=
.seq rawBody605_43 rawBody605_46

def rawBody605_48 : StackLang.HolProg 64 :=
.seq rawBody605_42 rawBody605_47

def rawBody605_49 : StackLang.HolProg 64 :=
.seq rawBody605_41 rawBody605_48

def rawBody605_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody605_52 : StackLang.HolProg 64 :=
.seq rawBody605_50 rawBody605_51

def rawBody605_53 : StackLang.HolProg 64 :=
.call (some (rawBody605_49, 0, 605, 2)) (Sum.inl 593) (some (rawBody605_52, 605, 3))

def rawBody605_54 : StackLang.HolProg 64 :=
.seq rawBody605_40 rawBody605_53

def rawBody605_55 : StackLang.HolProg 64 :=
.seq rawBody605_39 rawBody605_54

def rawBody605_56 : StackLang.HolProg 64 :=
.seq rawBody605_38 rawBody605_55

def rawBody605_57 : StackLang.HolProg 64 :=
.seq rawBody605_19 rawBody605_56

def rawBody605_58 : StackLang.HolProg 64 :=
.seq rawBody605_16 rawBody605_57

def rawBody605_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody605_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody605_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody605_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody605_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody605_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2316#64)

def rawBody605_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody605_68 : StackLang.HolProg 64 :=
.seq rawBody605_66 rawBody605_67

def rawBody605_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody605_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody605_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody605_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 605 5

def rawBody605_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody605_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody605_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody605_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody605_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody605_79 : StackLang.HolProg 64 :=
.seq rawBody605_77 rawBody605_78

def rawBody605_80 : StackLang.HolProg 64 :=
.seq rawBody605_76 rawBody605_79

def rawBody605_81 : StackLang.HolProg 64 :=
.seq rawBody605_75 rawBody605_80

def rawBody605_82 : StackLang.HolProg 64 :=
.seq rawBody605_74 rawBody605_81

def rawBody605_83 : StackLang.HolProg 64 :=
.seq rawBody605_73 rawBody605_82

def rawBody605_84 : StackLang.HolProg 64 :=
.seq rawBody605_72 rawBody605_83

def rawBody605_85 : StackLang.HolProg 64 :=
.seq rawBody605_71 rawBody605_84

def rawBody605_86 : StackLang.HolProg 64 :=
.seq rawBody605_70 rawBody605_85

def rawBody605_87 : StackLang.HolProg 64 :=
.seq rawBody605_69 rawBody605_86

def rawBody605_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody605_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody605_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody605_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody605_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody605_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody605_96 : StackLang.HolProg 64 :=
.seq rawBody605_94 rawBody605_95

def rawBody605_97 : StackLang.HolProg 64 :=
.seq rawBody605_93 rawBody605_96

def rawBody605_98 : StackLang.HolProg 64 :=
.seq rawBody605_92 rawBody605_97

def rawBody605_99 : StackLang.HolProg 64 :=
.seq rawBody605_91 rawBody605_98

def rawBody605_100 : StackLang.HolProg 64 :=
.seq rawBody605_90 rawBody605_99

def rawBody605_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody605_102 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody605_103 : StackLang.HolProg 64 :=
.seq rawBody605_101 rawBody605_102

def rawBody605_104 : StackLang.HolProg 64 :=
.call (some (rawBody605_100, 0, 605, 4)) (Sum.inl 473) (some (rawBody605_103, 605, 5))

def rawBody605_105 : StackLang.HolProg 64 :=
.seq rawBody605_89 rawBody605_104

def rawBody605_106 : StackLang.HolProg 64 :=
.seq rawBody605_88 rawBody605_105

def rawBody605_107 : StackLang.HolProg 64 :=
.seq rawBody605_87 rawBody605_106

def rawBody605_108 : StackLang.HolProg 64 :=
.seq rawBody605_68 rawBody605_107

def rawBody605_109 : StackLang.HolProg 64 :=
.seq rawBody605_65 rawBody605_108

def rawBody605_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody605_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody605_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody605_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody605_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody605_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 200#64)))

def rawBody605_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody605_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def rawBody605_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody605_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def rawBody605_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody605_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody605_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def rawBody605_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody605_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody605_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_132 : StackLang.HolProg 64 :=
.seq rawBody605_130 rawBody605_131

def rawBody605_133 : StackLang.HolProg 64 :=
.seq rawBody605_129 rawBody605_132

def rawBody605_134 : StackLang.HolProg 64 :=
.seq rawBody605_128 rawBody605_133

def rawBody605_135 : StackLang.HolProg 64 :=
.seq rawBody605_127 rawBody605_134

def rawBody605_136 : StackLang.HolProg 64 :=
.seq rawBody605_126 rawBody605_135

def rawBody605_137 : StackLang.HolProg 64 :=
.seq rawBody605_125 rawBody605_136

def rawBody605_138 : StackLang.HolProg 64 :=
.seq rawBody605_124 rawBody605_137

def rawBody605_139 : StackLang.HolProg 64 :=
.seq rawBody605_123 rawBody605_138

def rawBody605_140 : StackLang.HolProg 64 :=
.seq rawBody605_122 rawBody605_139

def rawBody605_141 : StackLang.HolProg 64 :=
.seq rawBody605_121 rawBody605_140

def rawBody605_142 : StackLang.HolProg 64 :=
.seq rawBody605_120 rawBody605_141

def rawBody605_143 : StackLang.HolProg 64 :=
.seq rawBody605_119 rawBody605_142

def rawBody605_144 : StackLang.HolProg 64 :=
.seq rawBody605_118 rawBody605_143

def rawBody605_145 : StackLang.HolProg 64 :=
.seq rawBody605_117 rawBody605_144

def rawBody605_146 : StackLang.HolProg 64 :=
.seq rawBody605_116 rawBody605_145

def rawBody605_147 : StackLang.HolProg 64 :=
.seq rawBody605_115 rawBody605_146

def rawBody605_148 : StackLang.HolProg 64 :=
.seq rawBody605_114 rawBody605_147

def rawBody605_149 : StackLang.HolProg 64 :=
.seq rawBody605_113 rawBody605_148

def rawBody605_150 : StackLang.HolProg 64 :=
.seq rawBody605_112 rawBody605_149

def rawBody605_151 : StackLang.HolProg 64 :=
.seq rawBody605_111 rawBody605_150

def rawBody605_152 : StackLang.HolProg 64 :=
.seq rawBody605_110 rawBody605_151

def rawBody605_153 : StackLang.HolProg 64 :=
.seq rawBody605_109 rawBody605_152

def rawBody605_154 : StackLang.HolProg 64 :=
.seq rawBody605_64 rawBody605_153

def rawBody605_155 : StackLang.HolProg 64 :=
.seq rawBody605_63 rawBody605_154

def rawBody605_156 : StackLang.HolProg 64 :=
.seq rawBody605_62 rawBody605_155

def rawBody605_157 : StackLang.HolProg 64 :=
.seq rawBody605_61 rawBody605_156

def rawBody605_158 : StackLang.HolProg 64 :=
.seq rawBody605_60 rawBody605_157

def rawBody605_159 : StackLang.HolProg 64 :=
.seq rawBody605_59 rawBody605_158

def rawBody605_160 : StackLang.HolProg 64 :=
.seq rawBody605_58 rawBody605_159

def rawBody605_161 : StackLang.HolProg 64 :=
.seq rawBody605_15 rawBody605_160

def rawBody605_162 : StackLang.HolProg 64 :=
.seq rawBody605_12 rawBody605_161

def rawBody605_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody605_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody605_165 : StackLang.HolProg 64 :=
.seq rawBody605_163 rawBody605_164

def rawBody605_166 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody605_162 rawBody605_165

def rawBody605_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody605_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2317#64)

def rawBody605_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody605_172 : StackLang.HolProg 64 :=
.seq rawBody605_170 rawBody605_171

def rawBody605_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody605_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody605_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody605_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 605 7

def rawBody605_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody605_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody605_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody605_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody605_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody605_183 : StackLang.HolProg 64 :=
.seq rawBody605_181 rawBody605_182

def rawBody605_184 : StackLang.HolProg 64 :=
.seq rawBody605_180 rawBody605_183

def rawBody605_185 : StackLang.HolProg 64 :=
.seq rawBody605_179 rawBody605_184

def rawBody605_186 : StackLang.HolProg 64 :=
.seq rawBody605_178 rawBody605_185

def rawBody605_187 : StackLang.HolProg 64 :=
.seq rawBody605_177 rawBody605_186

def rawBody605_188 : StackLang.HolProg 64 :=
.seq rawBody605_176 rawBody605_187

def rawBody605_189 : StackLang.HolProg 64 :=
.seq rawBody605_175 rawBody605_188

def rawBody605_190 : StackLang.HolProg 64 :=
.seq rawBody605_174 rawBody605_189

def rawBody605_191 : StackLang.HolProg 64 :=
.seq rawBody605_173 rawBody605_190

def rawBody605_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody605_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody605_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody605_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody605_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody605_199 : StackLang.HolProg 64 :=
.seq rawBody605_197 rawBody605_198

def rawBody605_200 : StackLang.HolProg 64 :=
.seq rawBody605_196 rawBody605_199

def rawBody605_201 : StackLang.HolProg 64 :=
.seq rawBody605_195 rawBody605_200

def rawBody605_202 : StackLang.HolProg 64 :=
.seq rawBody605_194 rawBody605_201

def rawBody605_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody605_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody605_205 : StackLang.HolProg 64 :=
.seq rawBody605_203 rawBody605_204

def rawBody605_206 : StackLang.HolProg 64 :=
.call (some (rawBody605_202, 0, 605, 6)) (Sum.inl 594) (some (rawBody605_205, 605, 7))

def rawBody605_207 : StackLang.HolProg 64 :=
.seq rawBody605_193 rawBody605_206

def rawBody605_208 : StackLang.HolProg 64 :=
.seq rawBody605_192 rawBody605_207

def rawBody605_209 : StackLang.HolProg 64 :=
.seq rawBody605_191 rawBody605_208

def rawBody605_210 : StackLang.HolProg 64 :=
.seq rawBody605_172 rawBody605_209

def rawBody605_211 : StackLang.HolProg 64 :=
.seq rawBody605_169 rawBody605_210

def rawBody605_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody605_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody605_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody605_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody605_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody605_217 : StackLang.HolProg 64 :=
.seq rawBody605_215 rawBody605_216

def rawBody605_218 : StackLang.HolProg 64 :=
.seq rawBody605_214 rawBody605_217

def rawBody605_219 : StackLang.HolProg 64 :=
.seq rawBody605_213 rawBody605_218

def rawBody605_220 : StackLang.HolProg 64 :=
.seq rawBody605_212 rawBody605_219

def rawBody605_221 : StackLang.HolProg 64 :=
.seq rawBody605_211 rawBody605_220

def rawBody605_222 : StackLang.HolProg 64 :=
.seq rawBody605_168 rawBody605_221

def rawBody605_223 : StackLang.HolProg 64 :=
.seq rawBody605_167 rawBody605_222

def rawBody605_224 : StackLang.HolProg 64 :=
.seq rawBody605_166 rawBody605_223

def rawBody605_225 : StackLang.HolProg 64 :=
.seq rawBody605_11 rawBody605_224

def rawBody605_226 : StackLang.HolProg 64 :=
.seq rawBody605_10 rawBody605_225

def rawBody605_227 : StackLang.HolProg 64 :=
.seq rawBody605_9 rawBody605_226

def rawBody605_228 : StackLang.HolProg 64 :=
.seq rawBody605_8 rawBody605_227

def rawBody605_229 : StackLang.HolProg 64 :=
.seq rawBody605_7 rawBody605_228

def rawBody605_230 : StackLang.HolProg 64 :=
.seq rawBody605_6 rawBody605_229

def rawBody605_231 : StackLang.HolProg 64 :=
.seq rawBody605_5 rawBody605_230

def rawBody605_232 : StackLang.HolProg 64 :=
.seq rawBody605_4 rawBody605_231

def rawBody605_233 : StackLang.HolProg 64 :=
.seq rawBody605_3 rawBody605_232

def rawBody605_234 : StackLang.HolProg 64 :=
.seq rawBody605_2 rawBody605_233

def rawBody605_235 : StackLang.HolProg 64 :=
.seq rawBody605_1 rawBody605_234

def rawBody605_236 : StackLang.HolProg 64 :=
.seq rawBody605_0 rawBody605_235

def raw605 : StackLang.HolProg 64 := rawBody605_236
theorem raw605_eq : StackRawCall.compTop RawInfo.rawInfo (function605 (.list [])).1 = raw605 := by
  kernel_rfl
#print axioms raw605_eq
end InitECandidate.Proofs.BackendStages
