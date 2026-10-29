import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function211
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody211_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody211_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody211_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 14 0#64)

def rawBody211_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody211_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody211_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody211_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody211_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody211_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody211_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody211_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody211_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody211_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody211_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody211_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody211_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody211_25 : StackLang.HolProg 64 :=
.seq rawBody211_23 rawBody211_24

def rawBody211_26 : StackLang.HolProg 64 :=
.seq rawBody211_22 rawBody211_25

def rawBody211_27 : StackLang.HolProg 64 :=
.seq rawBody211_21 rawBody211_26

def rawBody211_28 : StackLang.HolProg 64 :=
.seq rawBody211_20 rawBody211_27

def rawBody211_29 : StackLang.HolProg 64 :=
.seq rawBody211_19 rawBody211_28

def rawBody211_30 : StackLang.HolProg 64 :=
.seq rawBody211_18 rawBody211_29

def rawBody211_31 : StackLang.HolProg 64 :=
.seq rawBody211_17 rawBody211_30

def rawBody211_32 : StackLang.HolProg 64 :=
.seq rawBody211_16 rawBody211_31

def rawBody211_33 : StackLang.HolProg 64 :=
.seq rawBody211_15 rawBody211_32

def rawBody211_34 : StackLang.HolProg 64 :=
.seq rawBody211_14 rawBody211_33

def rawBody211_35 : StackLang.HolProg 64 :=
.seq rawBody211_13 rawBody211_34

def rawBody211_36 : StackLang.HolProg 64 :=
.seq rawBody211_12 rawBody211_35

def rawBody211_37 : StackLang.HolProg 64 :=
.seq rawBody211_11 rawBody211_36

def rawBody211_38 : StackLang.HolProg 64 :=
.seq rawBody211_10 rawBody211_37

def rawBody211_39 : StackLang.HolProg 64 :=
.seq rawBody211_9 rawBody211_38

def rawBody211_40 : StackLang.HolProg 64 :=
.seq rawBody211_8 rawBody211_39

def rawBody211_41 : StackLang.HolProg 64 :=
.seq rawBody211_7 rawBody211_40

def rawBody211_42 : StackLang.HolProg 64 :=
.seq rawBody211_6 rawBody211_41

def rawBody211_43 : StackLang.HolProg 64 :=
.seq rawBody211_5 rawBody211_42

def rawBody211_44 : StackLang.HolProg 64 :=
.seq rawBody211_4 rawBody211_43

def rawBody211_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody211_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody211_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody211_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody211_49 : StackLang.HolProg 64 :=
.seq rawBody211_47 rawBody211_48

def rawBody211_50 : StackLang.HolProg 64 :=
.seq rawBody211_46 rawBody211_49

def rawBody211_51 : StackLang.HolProg 64 :=
.seq rawBody211_45 rawBody211_50

def rawBody211_52 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 14) rawBody211_44 rawBody211_51

def rawBody211_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody211_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody211_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def rawBody211_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def rawBody211_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def rawBody211_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody211_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody211_60 : StackLang.HolProg 64 :=
.seq rawBody211_58 rawBody211_59

def rawBody211_61 : StackLang.HolProg 64 :=
.seq rawBody211_57 rawBody211_60

def rawBody211_62 : StackLang.HolProg 64 :=
.seq rawBody211_56 rawBody211_61

def rawBody211_63 : StackLang.HolProg 64 :=
.seq rawBody211_55 rawBody211_62

def rawBody211_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 270#64)

def rawBody211_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody211_67 : StackLang.HolProg 64 :=
.seq rawBody211_65 rawBody211_66

def rawBody211_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody211_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody211_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody211_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 211 3

def rawBody211_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody211_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody211_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody211_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody211_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody211_78 : StackLang.HolProg 64 :=
.seq rawBody211_76 rawBody211_77

def rawBody211_79 : StackLang.HolProg 64 :=
.seq rawBody211_75 rawBody211_78

def rawBody211_80 : StackLang.HolProg 64 :=
.seq rawBody211_74 rawBody211_79

def rawBody211_81 : StackLang.HolProg 64 :=
.seq rawBody211_73 rawBody211_80

def rawBody211_82 : StackLang.HolProg 64 :=
.seq rawBody211_72 rawBody211_81

def rawBody211_83 : StackLang.HolProg 64 :=
.seq rawBody211_71 rawBody211_82

def rawBody211_84 : StackLang.HolProg 64 :=
.seq rawBody211_70 rawBody211_83

def rawBody211_85 : StackLang.HolProg 64 :=
.seq rawBody211_69 rawBody211_84

def rawBody211_86 : StackLang.HolProg 64 :=
.seq rawBody211_68 rawBody211_85

def rawBody211_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody211_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody211_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody211_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody211_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody211_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody211_95 : StackLang.HolProg 64 :=
.seq rawBody211_93 rawBody211_94

def rawBody211_96 : StackLang.HolProg 64 :=
.seq rawBody211_92 rawBody211_95

def rawBody211_97 : StackLang.HolProg 64 :=
.seq rawBody211_91 rawBody211_96

def rawBody211_98 : StackLang.HolProg 64 :=
.seq rawBody211_90 rawBody211_97

def rawBody211_99 : StackLang.HolProg 64 :=
.seq rawBody211_89 rawBody211_98

def rawBody211_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody211_101 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody211_102 : StackLang.HolProg 64 :=
.seq rawBody211_100 rawBody211_101

def rawBody211_103 : StackLang.HolProg 64 :=
.call (some (rawBody211_99, 0, 211, 2)) (Sum.inl 115) (some (rawBody211_102, 211, 3))

def rawBody211_104 : StackLang.HolProg 64 :=
.seq rawBody211_88 rawBody211_103

def rawBody211_105 : StackLang.HolProg 64 :=
.seq rawBody211_87 rawBody211_104

def rawBody211_106 : StackLang.HolProg 64 :=
.seq rawBody211_86 rawBody211_105

def rawBody211_107 : StackLang.HolProg 64 :=
.seq rawBody211_67 rawBody211_106

def rawBody211_108 : StackLang.HolProg 64 :=
.seq rawBody211_64 rawBody211_107

def rawBody211_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody211_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody211_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody211_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody211_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody211_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody211_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody211_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody211_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody211_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody211_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody211_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody211_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody211_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody211_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody211_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def rawBody211_133 : StackLang.HolProg 64 :=
.seq rawBody211_131 rawBody211_132

def rawBody211_134 : StackLang.HolProg 64 :=
.seq rawBody211_130 rawBody211_133

def rawBody211_135 : StackLang.HolProg 64 :=
.seq rawBody211_129 rawBody211_134

def rawBody211_136 : StackLang.HolProg 64 :=
.seq rawBody211_128 rawBody211_135

def rawBody211_137 : StackLang.HolProg 64 :=
.seq rawBody211_127 rawBody211_136

def rawBody211_138 : StackLang.HolProg 64 :=
.seq rawBody211_126 rawBody211_137

def rawBody211_139 : StackLang.HolProg 64 :=
.seq rawBody211_125 rawBody211_138

def rawBody211_140 : StackLang.HolProg 64 :=
.seq rawBody211_124 rawBody211_139

def rawBody211_141 : StackLang.HolProg 64 :=
.seq rawBody211_123 rawBody211_140

def rawBody211_142 : StackLang.HolProg 64 :=
.seq rawBody211_122 rawBody211_141

def rawBody211_143 : StackLang.HolProg 64 :=
.seq rawBody211_121 rawBody211_142

def rawBody211_144 : StackLang.HolProg 64 :=
.seq rawBody211_120 rawBody211_143

def rawBody211_145 : StackLang.HolProg 64 :=
.seq rawBody211_119 rawBody211_144

def rawBody211_146 : StackLang.HolProg 64 :=
.seq rawBody211_118 rawBody211_145

def rawBody211_147 : StackLang.HolProg 64 :=
.seq rawBody211_117 rawBody211_146

def rawBody211_148 : StackLang.HolProg 64 :=
.seq rawBody211_116 rawBody211_147

def rawBody211_149 : StackLang.HolProg 64 :=
.seq rawBody211_115 rawBody211_148

def rawBody211_150 : StackLang.HolProg 64 :=
.seq rawBody211_114 rawBody211_149

def rawBody211_151 : StackLang.HolProg 64 :=
.seq rawBody211_113 rawBody211_150

def rawBody211_152 : StackLang.HolProg 64 :=
.seq rawBody211_112 rawBody211_151

def rawBody211_153 : StackLang.HolProg 64 :=
.seq rawBody211_111 rawBody211_152

def rawBody211_154 : StackLang.HolProg 64 :=
.seq rawBody211_110 rawBody211_153

def rawBody211_155 : StackLang.HolProg 64 :=
.seq rawBody211_109 rawBody211_154

def rawBody211_156 : StackLang.HolProg 64 :=
.seq rawBody211_108 rawBody211_155

def rawBody211_157 : StackLang.HolProg 64 :=
.seq rawBody211_63 rawBody211_156

def rawBody211_158 : StackLang.HolProg 64 :=
.seq rawBody211_54 rawBody211_157

def rawBody211_159 : StackLang.HolProg 64 :=
.seq rawBody211_53 rawBody211_158

def rawBody211_160 : StackLang.HolProg 64 :=
.seq rawBody211_52 rawBody211_159

def rawBody211_161 : StackLang.HolProg 64 :=
.seq rawBody211_3 rawBody211_160

def rawBody211_162 : StackLang.HolProg 64 :=
.seq rawBody211_2 rawBody211_161

def rawBody211_163 : StackLang.HolProg 64 :=
.seq rawBody211_1 rawBody211_162

def rawBody211_164 : StackLang.HolProg 64 :=
.seq rawBody211_0 rawBody211_163

def raw211 : StackLang.HolProg 64 := rawBody211_164
theorem raw211_eq : StackRawCall.compTop RawInfo.rawInfo (function211 (.list [])).1 = raw211 := by
  kernel_rfl
#print axioms raw211_eq
end InitECandidate.Proofs.BackendStages
