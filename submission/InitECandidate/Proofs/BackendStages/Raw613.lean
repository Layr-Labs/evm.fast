import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function613
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody613_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody613_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody613_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody613_3 : StackLang.HolProg 64 :=
.seq rawBody613_1 rawBody613_2

def rawBody613_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody613_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody613_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody613_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody613_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody613_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody613_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def rawBody613_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551352#64))

def rawBody613_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody613_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody613_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 152#64)))

def rawBody613_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody613_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody613_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody613_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 216#64)))

def rawBody613_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody613_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody613_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody613_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody613_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody613_31 : StackLang.HolProg 64 :=
.seq rawBody613_29 rawBody613_30

def rawBody613_32 : StackLang.HolProg 64 :=
.seq rawBody613_28 rawBody613_31

def rawBody613_33 : StackLang.HolProg 64 :=
.seq rawBody613_27 rawBody613_32

def rawBody613_34 : StackLang.HolProg 64 :=
.seq rawBody613_26 rawBody613_33

def rawBody613_35 : StackLang.HolProg 64 :=
.seq rawBody613_25 rawBody613_34

def rawBody613_36 : StackLang.HolProg 64 :=
.seq rawBody613_24 rawBody613_35

def rawBody613_37 : StackLang.HolProg 64 :=
.seq rawBody613_23 rawBody613_36

def rawBody613_38 : StackLang.HolProg 64 :=
.seq rawBody613_22 rawBody613_37

def rawBody613_39 : StackLang.HolProg 64 :=
.seq rawBody613_21 rawBody613_38

def rawBody613_40 : StackLang.HolProg 64 :=
.seq rawBody613_20 rawBody613_39

def rawBody613_41 : StackLang.HolProg 64 :=
.seq rawBody613_19 rawBody613_40

def rawBody613_42 : StackLang.HolProg 64 :=
.seq rawBody613_18 rawBody613_41

def rawBody613_43 : StackLang.HolProg 64 :=
.seq rawBody613_17 rawBody613_42

def rawBody613_44 : StackLang.HolProg 64 :=
.seq rawBody613_16 rawBody613_43

def rawBody613_45 : StackLang.HolProg 64 :=
.seq rawBody613_15 rawBody613_44

def rawBody613_46 : StackLang.HolProg 64 :=
.seq rawBody613_14 rawBody613_45

def rawBody613_47 : StackLang.HolProg 64 :=
.seq rawBody613_13 rawBody613_46

def rawBody613_48 : StackLang.HolProg 64 :=
.seq rawBody613_12 rawBody613_47

def rawBody613_49 : StackLang.HolProg 64 :=
.seq rawBody613_11 rawBody613_48

def rawBody613_50 : StackLang.HolProg 64 :=
.seq rawBody613_10 rawBody613_49

def rawBody613_51 : StackLang.HolProg 64 :=
.seq rawBody613_9 rawBody613_50

def rawBody613_52 : StackLang.HolProg 64 :=
.seq rawBody613_8 rawBody613_51

def rawBody613_53 : StackLang.HolProg 64 :=
.seq rawBody613_7 rawBody613_52

def rawBody613_54 : StackLang.HolProg 64 :=
.seq rawBody613_6 rawBody613_53

def rawBody613_55 : StackLang.HolProg 64 :=
.seq rawBody613_5 rawBody613_54

def rawBody613_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_57 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody613_55 rawBody613_56

def rawBody613_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody613_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody613_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody613_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody613_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody613_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody613_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 216#64))

def rawBody613_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 144#64))

def rawBody613_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody613_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody613_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody613_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody613_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody613_74 : StackLang.HolProg 64 :=
.seq rawBody613_72 rawBody613_73

def rawBody613_75 : StackLang.HolProg 64 :=
.seq rawBody613_71 rawBody613_74

def rawBody613_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2351#64)

def rawBody613_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody613_79 : StackLang.HolProg 64 :=
.seq rawBody613_77 rawBody613_78

def rawBody613_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody613_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody613_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody613_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 613 3

def rawBody613_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody613_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody613_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody613_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody613_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody613_90 : StackLang.HolProg 64 :=
.seq rawBody613_88 rawBody613_89

def rawBody613_91 : StackLang.HolProg 64 :=
.seq rawBody613_87 rawBody613_90

def rawBody613_92 : StackLang.HolProg 64 :=
.seq rawBody613_86 rawBody613_91

def rawBody613_93 : StackLang.HolProg 64 :=
.seq rawBody613_85 rawBody613_92

def rawBody613_94 : StackLang.HolProg 64 :=
.seq rawBody613_84 rawBody613_93

def rawBody613_95 : StackLang.HolProg 64 :=
.seq rawBody613_83 rawBody613_94

def rawBody613_96 : StackLang.HolProg 64 :=
.seq rawBody613_82 rawBody613_95

def rawBody613_97 : StackLang.HolProg 64 :=
.seq rawBody613_81 rawBody613_96

def rawBody613_98 : StackLang.HolProg 64 :=
.seq rawBody613_80 rawBody613_97

def rawBody613_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody613_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody613_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody613_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody613_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody613_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody613_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody613_108 : StackLang.HolProg 64 :=
.seq rawBody613_106 rawBody613_107

def rawBody613_109 : StackLang.HolProg 64 :=
.seq rawBody613_105 rawBody613_108

def rawBody613_110 : StackLang.HolProg 64 :=
.seq rawBody613_104 rawBody613_109

def rawBody613_111 : StackLang.HolProg 64 :=
.seq rawBody613_103 rawBody613_110

def rawBody613_112 : StackLang.HolProg 64 :=
.seq rawBody613_102 rawBody613_111

def rawBody613_113 : StackLang.HolProg 64 :=
.seq rawBody613_101 rawBody613_112

def rawBody613_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody613_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody613_116 : StackLang.HolProg 64 :=
.seq rawBody613_114 rawBody613_115

def rawBody613_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody613_118 : StackLang.HolProg 64 :=
.seq rawBody613_116 rawBody613_117

def rawBody613_119 : StackLang.HolProg 64 :=
.call (some (rawBody613_113, 0, 613, 2)) (Sum.inl 68) (some (rawBody613_118, 613, 3))

def rawBody613_120 : StackLang.HolProg 64 :=
.seq rawBody613_100 rawBody613_119

def rawBody613_121 : StackLang.HolProg 64 :=
.seq rawBody613_99 rawBody613_120

def rawBody613_122 : StackLang.HolProg 64 :=
.seq rawBody613_98 rawBody613_121

def rawBody613_123 : StackLang.HolProg 64 :=
.seq rawBody613_79 rawBody613_122

def rawBody613_124 : StackLang.HolProg 64 :=
.seq rawBody613_76 rawBody613_123

def rawBody613_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody613_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody613_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody613_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody613_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody613_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def rawBody613_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody613_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody613_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody613_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 216#64)))

def rawBody613_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody613_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_139 : StackLang.HolProg 64 :=
.seq rawBody613_137 rawBody613_138

def rawBody613_140 : StackLang.HolProg 64 :=
.seq rawBody613_136 rawBody613_139

def rawBody613_141 : StackLang.HolProg 64 :=
.seq rawBody613_135 rawBody613_140

def rawBody613_142 : StackLang.HolProg 64 :=
.seq rawBody613_134 rawBody613_141

def rawBody613_143 : StackLang.HolProg 64 :=
.seq rawBody613_133 rawBody613_142

def rawBody613_144 : StackLang.HolProg 64 :=
.seq rawBody613_132 rawBody613_143

def rawBody613_145 : StackLang.HolProg 64 :=
.seq rawBody613_131 rawBody613_144

def rawBody613_146 : StackLang.HolProg 64 :=
.seq rawBody613_130 rawBody613_145

def rawBody613_147 : StackLang.HolProg 64 :=
.seq rawBody613_129 rawBody613_146

def rawBody613_148 : StackLang.HolProg 64 :=
.seq rawBody613_128 rawBody613_147

def rawBody613_149 : StackLang.HolProg 64 :=
.seq rawBody613_127 rawBody613_148

def rawBody613_150 : StackLang.HolProg 64 :=
.seq rawBody613_126 rawBody613_149

def rawBody613_151 : StackLang.HolProg 64 :=
.seq rawBody613_125 rawBody613_150

def rawBody613_152 : StackLang.HolProg 64 :=
.seq rawBody613_124 rawBody613_151

def rawBody613_153 : StackLang.HolProg 64 :=
.seq rawBody613_75 rawBody613_152

def rawBody613_154 : StackLang.HolProg 64 :=
.seq rawBody613_70 rawBody613_153

def rawBody613_155 : StackLang.HolProg 64 :=
.seq rawBody613_69 rawBody613_154

def rawBody613_156 : StackLang.HolProg 64 :=
.seq rawBody613_68 rawBody613_155

def rawBody613_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody613_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody613_159 : StackLang.HolProg 64 :=
.seq rawBody613_157 rawBody613_158

def rawBody613_160 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody613_156 rawBody613_159

def rawBody613_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody613_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody613_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2352#64)

def rawBody613_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody613_166 : StackLang.HolProg 64 :=
.seq rawBody613_164 rawBody613_165

def rawBody613_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody613_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody613_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody613_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 613 5

def rawBody613_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody613_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody613_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody613_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody613_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody613_177 : StackLang.HolProg 64 :=
.seq rawBody613_175 rawBody613_176

def rawBody613_178 : StackLang.HolProg 64 :=
.seq rawBody613_174 rawBody613_177

def rawBody613_179 : StackLang.HolProg 64 :=
.seq rawBody613_173 rawBody613_178

def rawBody613_180 : StackLang.HolProg 64 :=
.seq rawBody613_172 rawBody613_179

def rawBody613_181 : StackLang.HolProg 64 :=
.seq rawBody613_171 rawBody613_180

def rawBody613_182 : StackLang.HolProg 64 :=
.seq rawBody613_170 rawBody613_181

def rawBody613_183 : StackLang.HolProg 64 :=
.seq rawBody613_169 rawBody613_182

def rawBody613_184 : StackLang.HolProg 64 :=
.seq rawBody613_168 rawBody613_183

def rawBody613_185 : StackLang.HolProg 64 :=
.seq rawBody613_167 rawBody613_184

def rawBody613_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody613_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody613_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody613_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody613_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody613_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody613_194 : StackLang.HolProg 64 :=
.seq rawBody613_192 rawBody613_193

def rawBody613_195 : StackLang.HolProg 64 :=
.seq rawBody613_191 rawBody613_194

def rawBody613_196 : StackLang.HolProg 64 :=
.seq rawBody613_190 rawBody613_195

def rawBody613_197 : StackLang.HolProg 64 :=
.seq rawBody613_189 rawBody613_196

def rawBody613_198 : StackLang.HolProg 64 :=
.seq rawBody613_188 rawBody613_197

def rawBody613_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody613_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody613_201 : StackLang.HolProg 64 :=
.seq rawBody613_199 rawBody613_200

def rawBody613_202 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody613_203 : StackLang.HolProg 64 :=
.seq rawBody613_201 rawBody613_202

def rawBody613_204 : StackLang.HolProg 64 :=
.call (some (rawBody613_198, 0, 613, 4)) (Sum.inl 77) (some (rawBody613_203, 613, 5))

def rawBody613_205 : StackLang.HolProg 64 :=
.seq rawBody613_187 rawBody613_204

def rawBody613_206 : StackLang.HolProg 64 :=
.seq rawBody613_186 rawBody613_205

def rawBody613_207 : StackLang.HolProg 64 :=
.seq rawBody613_185 rawBody613_206

def rawBody613_208 : StackLang.HolProg 64 :=
.seq rawBody613_166 rawBody613_207

def rawBody613_209 : StackLang.HolProg 64 :=
.seq rawBody613_163 rawBody613_208

def rawBody613_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody613_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody613_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody613_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody613_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody613_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 152#64)))

def rawBody613_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody613_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody613_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody613_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody613_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody613_222 : StackLang.HolProg 64 :=
.seq rawBody613_220 rawBody613_221

def rawBody613_223 : StackLang.HolProg 64 :=
.seq rawBody613_219 rawBody613_222

def rawBody613_224 : StackLang.HolProg 64 :=
.seq rawBody613_218 rawBody613_223

def rawBody613_225 : StackLang.HolProg 64 :=
.seq rawBody613_217 rawBody613_224

def rawBody613_226 : StackLang.HolProg 64 :=
.seq rawBody613_216 rawBody613_225

def rawBody613_227 : StackLang.HolProg 64 :=
.seq rawBody613_215 rawBody613_226

def rawBody613_228 : StackLang.HolProg 64 :=
.seq rawBody613_214 rawBody613_227

def rawBody613_229 : StackLang.HolProg 64 :=
.seq rawBody613_213 rawBody613_228

def rawBody613_230 : StackLang.HolProg 64 :=
.seq rawBody613_212 rawBody613_229

def rawBody613_231 : StackLang.HolProg 64 :=
.seq rawBody613_211 rawBody613_230

def rawBody613_232 : StackLang.HolProg 64 :=
.seq rawBody613_210 rawBody613_231

def rawBody613_233 : StackLang.HolProg 64 :=
.seq rawBody613_209 rawBody613_232

def rawBody613_234 : StackLang.HolProg 64 :=
.seq rawBody613_162 rawBody613_233

def rawBody613_235 : StackLang.HolProg 64 :=
.seq rawBody613_161 rawBody613_234

def rawBody613_236 : StackLang.HolProg 64 :=
.seq rawBody613_160 rawBody613_235

def rawBody613_237 : StackLang.HolProg 64 :=
.seq rawBody613_67 rawBody613_236

def rawBody613_238 : StackLang.HolProg 64 :=
.seq rawBody613_66 rawBody613_237

def rawBody613_239 : StackLang.HolProg 64 :=
.seq rawBody613_65 rawBody613_238

def rawBody613_240 : StackLang.HolProg 64 :=
.seq rawBody613_64 rawBody613_239

def rawBody613_241 : StackLang.HolProg 64 :=
.seq rawBody613_63 rawBody613_240

def rawBody613_242 : StackLang.HolProg 64 :=
.seq rawBody613_62 rawBody613_241

def rawBody613_243 : StackLang.HolProg 64 :=
.seq rawBody613_61 rawBody613_242

def rawBody613_244 : StackLang.HolProg 64 :=
.seq rawBody613_60 rawBody613_243

def rawBody613_245 : StackLang.HolProg 64 :=
.seq rawBody613_59 rawBody613_244

def rawBody613_246 : StackLang.HolProg 64 :=
.seq rawBody613_58 rawBody613_245

def rawBody613_247 : StackLang.HolProg 64 :=
.seq rawBody613_57 rawBody613_246

def rawBody613_248 : StackLang.HolProg 64 :=
.seq rawBody613_4 rawBody613_247

def rawBody613_249 : StackLang.HolProg 64 :=
.seq rawBody613_3 rawBody613_248

def rawBody613_250 : StackLang.HolProg 64 :=
.seq rawBody613_0 rawBody613_249

def raw613 : StackLang.HolProg 64 := rawBody613_250
theorem raw613_eq : StackRawCall.compTop RawInfo.rawInfo (function613 (.list [])).1 = raw613 := by
  kernel_rfl
#print axioms raw613_eq
end InitECandidate.Proofs.BackendStages
