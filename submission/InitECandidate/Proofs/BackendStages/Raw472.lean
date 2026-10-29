import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function472
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody472_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody472_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody472_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody472_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody472_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody472_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def rawBody472_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 192#64))

def rawBody472_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody472_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody472_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody472_10 : StackLang.HolProg 64 :=
.seq rawBody472_8 rawBody472_9

def rawBody472_11 : StackLang.HolProg 64 :=
.seq rawBody472_7 rawBody472_10

def rawBody472_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody472_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1495#64)

def rawBody472_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody472_15 : StackLang.HolProg 64 :=
.seq rawBody472_13 rawBody472_14

def rawBody472_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody472_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody472_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody472_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 472 3

def rawBody472_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody472_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody472_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody472_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody472_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody472_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody472_26 : StackLang.HolProg 64 :=
.seq rawBody472_24 rawBody472_25

def rawBody472_27 : StackLang.HolProg 64 :=
.seq rawBody472_23 rawBody472_26

def rawBody472_28 : StackLang.HolProg 64 :=
.seq rawBody472_22 rawBody472_27

def rawBody472_29 : StackLang.HolProg 64 :=
.seq rawBody472_21 rawBody472_28

def rawBody472_30 : StackLang.HolProg 64 :=
.seq rawBody472_20 rawBody472_29

def rawBody472_31 : StackLang.HolProg 64 :=
.seq rawBody472_19 rawBody472_30

def rawBody472_32 : StackLang.HolProg 64 :=
.seq rawBody472_18 rawBody472_31

def rawBody472_33 : StackLang.HolProg 64 :=
.seq rawBody472_17 rawBody472_32

def rawBody472_34 : StackLang.HolProg 64 :=
.seq rawBody472_16 rawBody472_33

def rawBody472_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody472_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody472_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody472_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody472_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody472_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody472_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody472_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody472_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody472_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody472_45 : StackLang.HolProg 64 :=
.seq rawBody472_43 rawBody472_44

def rawBody472_46 : StackLang.HolProg 64 :=
.seq rawBody472_42 rawBody472_45

def rawBody472_47 : StackLang.HolProg 64 :=
.seq rawBody472_41 rawBody472_46

def rawBody472_48 : StackLang.HolProg 64 :=
.seq rawBody472_40 rawBody472_47

def rawBody472_49 : StackLang.HolProg 64 :=
.seq rawBody472_39 rawBody472_48

def rawBody472_50 : StackLang.HolProg 64 :=
.seq rawBody472_38 rawBody472_49

def rawBody472_51 : StackLang.HolProg 64 :=
.seq rawBody472_37 rawBody472_50

def rawBody472_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody472_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody472_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody472_55 : StackLang.HolProg 64 :=
.seq rawBody472_53 rawBody472_54

def rawBody472_56 : StackLang.HolProg 64 :=
.seq rawBody472_52 rawBody472_55

def rawBody472_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody472_58 : StackLang.HolProg 64 :=
.seq rawBody472_56 rawBody472_57

def rawBody472_59 : StackLang.HolProg 64 :=
.call (some (rawBody472_51, 0, 472, 2)) (Sum.inl 92) (some (rawBody472_58, 472, 3))

def rawBody472_60 : StackLang.HolProg 64 :=
.seq rawBody472_36 rawBody472_59

def rawBody472_61 : StackLang.HolProg 64 :=
.seq rawBody472_35 rawBody472_60

def rawBody472_62 : StackLang.HolProg 64 :=
.seq rawBody472_34 rawBody472_61

def rawBody472_63 : StackLang.HolProg 64 :=
.seq rawBody472_15 rawBody472_62

def rawBody472_64 : StackLang.HolProg 64 :=
.seq rawBody472_12 rawBody472_63

def rawBody472_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody472_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody472_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody472_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody472_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody472_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody472_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody472_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def rawBody472_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody472_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody472_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody472_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody472_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody472_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def rawBody472_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody472_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody472_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody472_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody472_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody472_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody472_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def rawBody472_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody472_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody472_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody472_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 72#64))

def rawBody472_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody472_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody472_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody472_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody472_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody472_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody472_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def rawBody472_97 : StackLang.HolProg 64 :=
.seq rawBody472_95 rawBody472_96

def rawBody472_98 : StackLang.HolProg 64 :=
.seq rawBody472_94 rawBody472_97

def rawBody472_99 : StackLang.HolProg 64 :=
.seq rawBody472_93 rawBody472_98

def rawBody472_100 : StackLang.HolProg 64 :=
.seq rawBody472_92 rawBody472_99

def rawBody472_101 : StackLang.HolProg 64 :=
.seq rawBody472_91 rawBody472_100

def rawBody472_102 : StackLang.HolProg 64 :=
.seq rawBody472_90 rawBody472_101

def rawBody472_103 : StackLang.HolProg 64 :=
.seq rawBody472_89 rawBody472_102

def rawBody472_104 : StackLang.HolProg 64 :=
.seq rawBody472_88 rawBody472_103

def rawBody472_105 : StackLang.HolProg 64 :=
.seq rawBody472_87 rawBody472_104

def rawBody472_106 : StackLang.HolProg 64 :=
.seq rawBody472_86 rawBody472_105

def rawBody472_107 : StackLang.HolProg 64 :=
.seq rawBody472_85 rawBody472_106

def rawBody472_108 : StackLang.HolProg 64 :=
.seq rawBody472_84 rawBody472_107

def rawBody472_109 : StackLang.HolProg 64 :=
.seq rawBody472_83 rawBody472_108

def rawBody472_110 : StackLang.HolProg 64 :=
.seq rawBody472_82 rawBody472_109

def rawBody472_111 : StackLang.HolProg 64 :=
.seq rawBody472_81 rawBody472_110

def rawBody472_112 : StackLang.HolProg 64 :=
.seq rawBody472_80 rawBody472_111

def rawBody472_113 : StackLang.HolProg 64 :=
.seq rawBody472_79 rawBody472_112

def rawBody472_114 : StackLang.HolProg 64 :=
.seq rawBody472_78 rawBody472_113

def rawBody472_115 : StackLang.HolProg 64 :=
.seq rawBody472_77 rawBody472_114

def rawBody472_116 : StackLang.HolProg 64 :=
.seq rawBody472_76 rawBody472_115

def rawBody472_117 : StackLang.HolProg 64 :=
.seq rawBody472_75 rawBody472_116

def rawBody472_118 : StackLang.HolProg 64 :=
.seq rawBody472_74 rawBody472_117

def rawBody472_119 : StackLang.HolProg 64 :=
.seq rawBody472_73 rawBody472_118

def rawBody472_120 : StackLang.HolProg 64 :=
.seq rawBody472_72 rawBody472_119

def rawBody472_121 : StackLang.HolProg 64 :=
.seq rawBody472_71 rawBody472_120

def rawBody472_122 : StackLang.HolProg 64 :=
.seq rawBody472_70 rawBody472_121

def rawBody472_123 : StackLang.HolProg 64 :=
.seq rawBody472_69 rawBody472_122

def rawBody472_124 : StackLang.HolProg 64 :=
.seq rawBody472_68 rawBody472_123

def rawBody472_125 : StackLang.HolProg 64 :=
.seq rawBody472_67 rawBody472_124

def rawBody472_126 : StackLang.HolProg 64 :=
.seq rawBody472_66 rawBody472_125

def rawBody472_127 : StackLang.HolProg 64 :=
.seq rawBody472_65 rawBody472_126

def rawBody472_128 : StackLang.HolProg 64 :=
.seq rawBody472_64 rawBody472_127

def rawBody472_129 : StackLang.HolProg 64 :=
.seq rawBody472_11 rawBody472_128

def rawBody472_130 : StackLang.HolProg 64 :=
.seq rawBody472_6 rawBody472_129

def rawBody472_131 : StackLang.HolProg 64 :=
.seq rawBody472_5 rawBody472_130

def rawBody472_132 : StackLang.HolProg 64 :=
.seq rawBody472_4 rawBody472_131

def rawBody472_133 : StackLang.HolProg 64 :=
.seq rawBody472_3 rawBody472_132

def rawBody472_134 : StackLang.HolProg 64 :=
.seq rawBody472_2 rawBody472_133

def rawBody472_135 : StackLang.HolProg 64 :=
.seq rawBody472_1 rawBody472_134

def rawBody472_136 : StackLang.HolProg 64 :=
.seq rawBody472_0 rawBody472_135

def raw472 : StackLang.HolProg 64 := rawBody472_136
theorem raw472_eq : StackRawCall.compTop RawInfo.rawInfo (function472 (.list [])).1 = raw472 := by
  kernel_rfl
#print axioms raw472_eq
end InitECandidate.Proofs.BackendStages
