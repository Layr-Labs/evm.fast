import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw687
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody687_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody687_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody687_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1152#64)

def AllocBody687_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody687_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody687_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody687_6 : StackLang.HolProg 64 :=
.seq AllocBody687_4 AllocBody687_5

def AllocBody687_7 : StackLang.HolProg 64 :=
.seq AllocBody687_3 AllocBody687_6

def AllocBody687_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2926#64)

def AllocBody687_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody687_11 : StackLang.HolProg 64 :=
.seq AllocBody687_9 AllocBody687_10

def AllocBody687_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody687_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody687_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody687_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 687 3

def AllocBody687_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody687_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody687_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody687_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody687_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody687_22 : StackLang.HolProg 64 :=
.seq AllocBody687_20 AllocBody687_21

def AllocBody687_23 : StackLang.HolProg 64 :=
.seq AllocBody687_19 AllocBody687_22

def AllocBody687_24 : StackLang.HolProg 64 :=
.seq AllocBody687_18 AllocBody687_23

def AllocBody687_25 : StackLang.HolProg 64 :=
.seq AllocBody687_17 AllocBody687_24

def AllocBody687_26 : StackLang.HolProg 64 :=
.seq AllocBody687_16 AllocBody687_25

def AllocBody687_27 : StackLang.HolProg 64 :=
.seq AllocBody687_15 AllocBody687_26

def AllocBody687_28 : StackLang.HolProg 64 :=
.seq AllocBody687_14 AllocBody687_27

def AllocBody687_29 : StackLang.HolProg 64 :=
.seq AllocBody687_13 AllocBody687_28

def AllocBody687_30 : StackLang.HolProg 64 :=
.seq AllocBody687_12 AllocBody687_29

def AllocBody687_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody687_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody687_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody687_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody687_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody687_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody687_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody687_40 : StackLang.HolProg 64 :=
.seq AllocBody687_38 AllocBody687_39

def AllocBody687_41 : StackLang.HolProg 64 :=
.seq AllocBody687_37 AllocBody687_40

def AllocBody687_42 : StackLang.HolProg 64 :=
.seq AllocBody687_36 AllocBody687_41

def AllocBody687_43 : StackLang.HolProg 64 :=
.seq AllocBody687_35 AllocBody687_42

def AllocBody687_44 : StackLang.HolProg 64 :=
.seq AllocBody687_34 AllocBody687_43

def AllocBody687_45 : StackLang.HolProg 64 :=
.seq AllocBody687_33 AllocBody687_44

def AllocBody687_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody687_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody687_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody687_49 : StackLang.HolProg 64 :=
.seq AllocBody687_47 AllocBody687_48

def AllocBody687_50 : StackLang.HolProg 64 :=
.seq AllocBody687_46 AllocBody687_49

def AllocBody687_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody687_52 : StackLang.HolProg 64 :=
.seq AllocBody687_50 AllocBody687_51

def AllocBody687_53 : StackLang.HolProg 64 :=
.call (some (AllocBody687_45, 0, 687, 2)) (Sum.inl 78) (some (AllocBody687_52, 687, 3))

def AllocBody687_54 : StackLang.HolProg 64 :=
.seq AllocBody687_32 AllocBody687_53

def AllocBody687_55 : StackLang.HolProg 64 :=
.seq AllocBody687_31 AllocBody687_54

def AllocBody687_56 : StackLang.HolProg 64 :=
.seq AllocBody687_30 AllocBody687_55

def AllocBody687_57 : StackLang.HolProg 64 :=
.seq AllocBody687_11 AllocBody687_56

def AllocBody687_58 : StackLang.HolProg 64 :=
.seq AllocBody687_8 AllocBody687_57

def AllocBody687_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody687_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody687_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody687_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody687_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody687_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody687_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody687_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def AllocBody687_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def AllocBody687_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 384#64)))

def AllocBody687_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def AllocBody687_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def AllocBody687_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def AllocBody687_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def AllocBody687_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody687_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def AllocBody687_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 16#64))

def AllocBody687_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 24#64))

def AllocBody687_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 768#64)))

def AllocBody687_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 64#64))

def AllocBody687_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 72#64))

def AllocBody687_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 80#64))

def AllocBody687_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def AllocBody687_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody687_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody687_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody687_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody687_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody687_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody687_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody687_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def AllocBody687_116 : StackLang.HolProg 64 :=
.seq AllocBody687_114 AllocBody687_115

def AllocBody687_117 : StackLang.HolProg 64 :=
.seq AllocBody687_113 AllocBody687_116

def AllocBody687_118 : StackLang.HolProg 64 :=
.seq AllocBody687_112 AllocBody687_117

def AllocBody687_119 : StackLang.HolProg 64 :=
.seq AllocBody687_111 AllocBody687_118

def AllocBody687_120 : StackLang.HolProg 64 :=
.seq AllocBody687_110 AllocBody687_119

def AllocBody687_121 : StackLang.HolProg 64 :=
.seq AllocBody687_109 AllocBody687_120

def AllocBody687_122 : StackLang.HolProg 64 :=
.seq AllocBody687_108 AllocBody687_121

def AllocBody687_123 : StackLang.HolProg 64 :=
.seq AllocBody687_107 AllocBody687_122

def AllocBody687_124 : StackLang.HolProg 64 :=
.seq AllocBody687_106 AllocBody687_123

def AllocBody687_125 : StackLang.HolProg 64 :=
.seq AllocBody687_105 AllocBody687_124

def AllocBody687_126 : StackLang.HolProg 64 :=
.seq AllocBody687_104 AllocBody687_125

def AllocBody687_127 : StackLang.HolProg 64 :=
.seq AllocBody687_103 AllocBody687_126

def AllocBody687_128 : StackLang.HolProg 64 :=
.seq AllocBody687_102 AllocBody687_127

def AllocBody687_129 : StackLang.HolProg 64 :=
.seq AllocBody687_101 AllocBody687_128

def AllocBody687_130 : StackLang.HolProg 64 :=
.seq AllocBody687_100 AllocBody687_129

def AllocBody687_131 : StackLang.HolProg 64 :=
.seq AllocBody687_99 AllocBody687_130

def AllocBody687_132 : StackLang.HolProg 64 :=
.seq AllocBody687_98 AllocBody687_131

def AllocBody687_133 : StackLang.HolProg 64 :=
.seq AllocBody687_97 AllocBody687_132

def AllocBody687_134 : StackLang.HolProg 64 :=
.seq AllocBody687_96 AllocBody687_133

def AllocBody687_135 : StackLang.HolProg 64 :=
.seq AllocBody687_95 AllocBody687_134

def AllocBody687_136 : StackLang.HolProg 64 :=
.seq AllocBody687_94 AllocBody687_135

def AllocBody687_137 : StackLang.HolProg 64 :=
.seq AllocBody687_93 AllocBody687_136

def AllocBody687_138 : StackLang.HolProg 64 :=
.seq AllocBody687_92 AllocBody687_137

def AllocBody687_139 : StackLang.HolProg 64 :=
.seq AllocBody687_91 AllocBody687_138

def AllocBody687_140 : StackLang.HolProg 64 :=
.seq AllocBody687_90 AllocBody687_139

def AllocBody687_141 : StackLang.HolProg 64 :=
.seq AllocBody687_89 AllocBody687_140

def AllocBody687_142 : StackLang.HolProg 64 :=
.seq AllocBody687_88 AllocBody687_141

def AllocBody687_143 : StackLang.HolProg 64 :=
.seq AllocBody687_87 AllocBody687_142

def AllocBody687_144 : StackLang.HolProg 64 :=
.seq AllocBody687_86 AllocBody687_143

def AllocBody687_145 : StackLang.HolProg 64 :=
.seq AllocBody687_85 AllocBody687_144

def AllocBody687_146 : StackLang.HolProg 64 :=
.seq AllocBody687_84 AllocBody687_145

def AllocBody687_147 : StackLang.HolProg 64 :=
.seq AllocBody687_83 AllocBody687_146

def AllocBody687_148 : StackLang.HolProg 64 :=
.seq AllocBody687_82 AllocBody687_147

def AllocBody687_149 : StackLang.HolProg 64 :=
.seq AllocBody687_81 AllocBody687_148

def AllocBody687_150 : StackLang.HolProg 64 :=
.seq AllocBody687_80 AllocBody687_149

def AllocBody687_151 : StackLang.HolProg 64 :=
.seq AllocBody687_79 AllocBody687_150

def AllocBody687_152 : StackLang.HolProg 64 :=
.seq AllocBody687_78 AllocBody687_151

def AllocBody687_153 : StackLang.HolProg 64 :=
.seq AllocBody687_77 AllocBody687_152

def AllocBody687_154 : StackLang.HolProg 64 :=
.seq AllocBody687_76 AllocBody687_153

def AllocBody687_155 : StackLang.HolProg 64 :=
.seq AllocBody687_75 AllocBody687_154

def AllocBody687_156 : StackLang.HolProg 64 :=
.seq AllocBody687_74 AllocBody687_155

def AllocBody687_157 : StackLang.HolProg 64 :=
.seq AllocBody687_73 AllocBody687_156

def AllocBody687_158 : StackLang.HolProg 64 :=
.seq AllocBody687_72 AllocBody687_157

def AllocBody687_159 : StackLang.HolProg 64 :=
.seq AllocBody687_71 AllocBody687_158

def AllocBody687_160 : StackLang.HolProg 64 :=
.seq AllocBody687_70 AllocBody687_159

def AllocBody687_161 : StackLang.HolProg 64 :=
.seq AllocBody687_69 AllocBody687_160

def AllocBody687_162 : StackLang.HolProg 64 :=
.seq AllocBody687_68 AllocBody687_161

def AllocBody687_163 : StackLang.HolProg 64 :=
.seq AllocBody687_67 AllocBody687_162

def AllocBody687_164 : StackLang.HolProg 64 :=
.seq AllocBody687_66 AllocBody687_163

def AllocBody687_165 : StackLang.HolProg 64 :=
.seq AllocBody687_65 AllocBody687_164

def AllocBody687_166 : StackLang.HolProg 64 :=
.seq AllocBody687_64 AllocBody687_165

def AllocBody687_167 : StackLang.HolProg 64 :=
.seq AllocBody687_63 AllocBody687_166

def AllocBody687_168 : StackLang.HolProg 64 :=
.seq AllocBody687_62 AllocBody687_167

def AllocBody687_169 : StackLang.HolProg 64 :=
.seq AllocBody687_61 AllocBody687_168

def AllocBody687_170 : StackLang.HolProg 64 :=
.seq AllocBody687_60 AllocBody687_169

def AllocBody687_171 : StackLang.HolProg 64 :=
.seq AllocBody687_59 AllocBody687_170

def AllocBody687_172 : StackLang.HolProg 64 :=
.seq AllocBody687_58 AllocBody687_171

def AllocBody687_173 : StackLang.HolProg 64 :=
.seq AllocBody687_7 AllocBody687_172

def AllocBody687_174 : StackLang.HolProg 64 :=
.seq AllocBody687_2 AllocBody687_173

def AllocBody687_175 : StackLang.HolProg 64 :=
.seq AllocBody687_1 AllocBody687_174

def AllocBody687_176 : StackLang.HolProg 64 :=
.seq AllocBody687_0 AllocBody687_175

def Alloc687 : Nat × StackLang.HolProg 64 := (687, AllocBody687_176)
theorem Alloc687_eq : StackAlloc.progComp (687, raw687) = Alloc687 := by
  kernel_rfl
#print axioms Alloc687_eq
end InitECandidate.Proofs.BackendStages
