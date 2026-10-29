import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed78
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody78_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody78_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody78_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody78_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody78_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody78_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody78_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody78_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody78_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody78_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody78_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody78_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody78_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody78_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody78_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody78_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody78_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody78_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody78_34 : StackLang.HolProg 64 :=
.seq NamedBody78_32 NamedBody78_33

def NamedBody78_35 : StackLang.HolProg 64 :=
.seq NamedBody78_31 NamedBody78_34

def NamedBody78_36 : StackLang.HolProg 64 :=
.seq NamedBody78_30 NamedBody78_35

def NamedBody78_37 : StackLang.HolProg 64 :=
.seq NamedBody78_29 NamedBody78_36

def NamedBody78_38 : StackLang.HolProg 64 :=
.seq NamedBody78_28 NamedBody78_37

def NamedBody78_39 : StackLang.HolProg 64 :=
.seq NamedBody78_27 NamedBody78_38

def NamedBody78_40 : StackLang.HolProg 64 :=
.seq NamedBody78_26 NamedBody78_39

def NamedBody78_41 : StackLang.HolProg 64 :=
.seq NamedBody78_25 NamedBody78_40

def NamedBody78_42 : StackLang.HolProg 64 :=
.seq NamedBody78_24 NamedBody78_41

def NamedBody78_43 : StackLang.HolProg 64 :=
.seq NamedBody78_23 NamedBody78_42

def NamedBody78_44 : StackLang.HolProg 64 :=
.seq NamedBody78_22 NamedBody78_43

def NamedBody78_45 : StackLang.HolProg 64 :=
.seq NamedBody78_21 NamedBody78_44

def NamedBody78_46 : StackLang.HolProg 64 :=
.seq NamedBody78_20 NamedBody78_45

def NamedBody78_47 : StackLang.HolProg 64 :=
.seq NamedBody78_19 NamedBody78_46

def NamedBody78_48 : StackLang.HolProg 64 :=
.seq NamedBody78_18 NamedBody78_47

def NamedBody78_49 : StackLang.HolProg 64 :=
.seq NamedBody78_17 NamedBody78_48

def NamedBody78_50 : StackLang.HolProg 64 :=
.seq NamedBody78_16 NamedBody78_49

def NamedBody78_51 : StackLang.HolProg 64 :=
.seq NamedBody78_15 NamedBody78_50

def NamedBody78_52 : StackLang.HolProg 64 :=
.seq NamedBody78_14 NamedBody78_51

def NamedBody78_53 : StackLang.HolProg 64 :=
.seq NamedBody78_13 NamedBody78_52

def NamedBody78_54 : StackLang.HolProg 64 :=
.seq NamedBody78_12 NamedBody78_53

def NamedBody78_55 : StackLang.HolProg 64 :=
.seq NamedBody78_11 NamedBody78_54

def NamedBody78_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody78_59 : StackLang.HolProg 64 :=
.seq NamedBody78_57 NamedBody78_58

def NamedBody78_60 : StackLang.HolProg 64 :=
.seq NamedBody78_56 NamedBody78_59

def NamedBody78_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody78_55 NamedBody78_60

def NamedBody78_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_64 : StackLang.HolProg 64 :=
.seq NamedBody78_62 NamedBody78_63

def NamedBody78_65 : StackLang.HolProg 64 :=
.seq NamedBody78_61 NamedBody78_64

def NamedBody78_66 : StackLang.HolProg 64 :=
.seq NamedBody78_10 NamedBody78_65

def NamedBody78_67 : StackLang.HolProg 64 :=
.seq NamedBody78_9 NamedBody78_66

def NamedBody78_68 : StackLang.HolProg 64 :=
.loop NamedBody78_67

def NamedBody78_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody78_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody78_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody78_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody78_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody78_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody78_82 : StackLang.HolProg 64 :=
.seq NamedBody78_80 NamedBody78_81

def NamedBody78_83 : StackLang.HolProg 64 :=
.seq NamedBody78_79 NamedBody78_82

def NamedBody78_84 : StackLang.HolProg 64 :=
.seq NamedBody78_78 NamedBody78_83

def NamedBody78_85 : StackLang.HolProg 64 :=
.seq NamedBody78_77 NamedBody78_84

def NamedBody78_86 : StackLang.HolProg 64 :=
.seq NamedBody78_76 NamedBody78_85

def NamedBody78_87 : StackLang.HolProg 64 :=
.seq NamedBody78_75 NamedBody78_86

def NamedBody78_88 : StackLang.HolProg 64 :=
.seq NamedBody78_74 NamedBody78_87

def NamedBody78_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody78_92 : StackLang.HolProg 64 :=
.seq NamedBody78_90 NamedBody78_91

def NamedBody78_93 : StackLang.HolProg 64 :=
.seq NamedBody78_89 NamedBody78_92

def NamedBody78_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody78_88 NamedBody78_93

def NamedBody78_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_97 : StackLang.HolProg 64 :=
.seq NamedBody78_95 NamedBody78_96

def NamedBody78_98 : StackLang.HolProg 64 :=
.seq NamedBody78_94 NamedBody78_97

def NamedBody78_99 : StackLang.HolProg 64 :=
.seq NamedBody78_73 NamedBody78_98

def NamedBody78_100 : StackLang.HolProg 64 :=
.seq NamedBody78_72 NamedBody78_99

def NamedBody78_101 : StackLang.HolProg 64 :=
.loop NamedBody78_100

def NamedBody78_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_104 : StackLang.HolProg 64 :=
.seq NamedBody78_102 NamedBody78_103

def NamedBody78_105 : StackLang.HolProg 64 :=
.seq NamedBody78_101 NamedBody78_104

def NamedBody78_106 : StackLang.HolProg 64 :=
.seq NamedBody78_71 NamedBody78_105

def NamedBody78_107 : StackLang.HolProg 64 :=
.seq NamedBody78_70 NamedBody78_106

def NamedBody78_108 : StackLang.HolProg 64 :=
.seq NamedBody78_69 NamedBody78_107

def NamedBody78_109 : StackLang.HolProg 64 :=
.seq NamedBody78_68 NamedBody78_108

def NamedBody78_110 : StackLang.HolProg 64 :=
.seq NamedBody78_8 NamedBody78_109

def NamedBody78_111 : StackLang.HolProg 64 :=
.seq NamedBody78_7 NamedBody78_110

def NamedBody78_112 : StackLang.HolProg 64 :=
.seq NamedBody78_6 NamedBody78_111

def NamedBody78_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_115 : StackLang.HolProg 64 :=
.seq NamedBody78_113 NamedBody78_114

def NamedBody78_116 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody78_112 NamedBody78_115

def NamedBody78_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody78_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody78_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody78_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody78_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody78_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody78_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody78_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody78_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody78_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody78_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody78_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody78_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody78_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody78_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody78_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody78_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody78_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody78_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody78_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody78_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody78_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody78_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody78_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody78_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody78_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody78_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody78_157 : StackLang.HolProg 64 :=
.seq NamedBody78_155 NamedBody78_156

def NamedBody78_158 : StackLang.HolProg 64 :=
.seq NamedBody78_154 NamedBody78_157

def NamedBody78_159 : StackLang.HolProg 64 :=
.seq NamedBody78_153 NamedBody78_158

def NamedBody78_160 : StackLang.HolProg 64 :=
.seq NamedBody78_152 NamedBody78_159

def NamedBody78_161 : StackLang.HolProg 64 :=
.seq NamedBody78_151 NamedBody78_160

def NamedBody78_162 : StackLang.HolProg 64 :=
.seq NamedBody78_150 NamedBody78_161

def NamedBody78_163 : StackLang.HolProg 64 :=
.seq NamedBody78_149 NamedBody78_162

def NamedBody78_164 : StackLang.HolProg 64 :=
.seq NamedBody78_148 NamedBody78_163

def NamedBody78_165 : StackLang.HolProg 64 :=
.seq NamedBody78_147 NamedBody78_164

def NamedBody78_166 : StackLang.HolProg 64 :=
.seq NamedBody78_146 NamedBody78_165

def NamedBody78_167 : StackLang.HolProg 64 :=
.seq NamedBody78_145 NamedBody78_166

def NamedBody78_168 : StackLang.HolProg 64 :=
.seq NamedBody78_144 NamedBody78_167

def NamedBody78_169 : StackLang.HolProg 64 :=
.seq NamedBody78_143 NamedBody78_168

def NamedBody78_170 : StackLang.HolProg 64 :=
.seq NamedBody78_142 NamedBody78_169

def NamedBody78_171 : StackLang.HolProg 64 :=
.seq NamedBody78_141 NamedBody78_170

def NamedBody78_172 : StackLang.HolProg 64 :=
.seq NamedBody78_140 NamedBody78_171

def NamedBody78_173 : StackLang.HolProg 64 :=
.seq NamedBody78_139 NamedBody78_172

def NamedBody78_174 : StackLang.HolProg 64 :=
.seq NamedBody78_138 NamedBody78_173

def NamedBody78_175 : StackLang.HolProg 64 :=
.seq NamedBody78_137 NamedBody78_174

def NamedBody78_176 : StackLang.HolProg 64 :=
.seq NamedBody78_136 NamedBody78_175

def NamedBody78_177 : StackLang.HolProg 64 :=
.seq NamedBody78_135 NamedBody78_176

def NamedBody78_178 : StackLang.HolProg 64 :=
.seq NamedBody78_134 NamedBody78_177

def NamedBody78_179 : StackLang.HolProg 64 :=
.seq NamedBody78_133 NamedBody78_178

def NamedBody78_180 : StackLang.HolProg 64 :=
.seq NamedBody78_132 NamedBody78_179

def NamedBody78_181 : StackLang.HolProg 64 :=
.seq NamedBody78_131 NamedBody78_180

def NamedBody78_182 : StackLang.HolProg 64 :=
.seq NamedBody78_130 NamedBody78_181

def NamedBody78_183 : StackLang.HolProg 64 :=
.seq NamedBody78_129 NamedBody78_182

def NamedBody78_184 : StackLang.HolProg 64 :=
.seq NamedBody78_128 NamedBody78_183

def NamedBody78_185 : StackLang.HolProg 64 :=
.seq NamedBody78_127 NamedBody78_184

def NamedBody78_186 : StackLang.HolProg 64 :=
.seq NamedBody78_126 NamedBody78_185

def NamedBody78_187 : StackLang.HolProg 64 :=
.seq NamedBody78_125 NamedBody78_186

def NamedBody78_188 : StackLang.HolProg 64 :=
.seq NamedBody78_124 NamedBody78_187

def NamedBody78_189 : StackLang.HolProg 64 :=
.seq NamedBody78_123 NamedBody78_188

def NamedBody78_190 : StackLang.HolProg 64 :=
.seq NamedBody78_122 NamedBody78_189

def NamedBody78_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody78_194 : StackLang.HolProg 64 :=
.seq NamedBody78_192 NamedBody78_193

def NamedBody78_195 : StackLang.HolProg 64 :=
.seq NamedBody78_191 NamedBody78_194

def NamedBody78_196 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody78_190 NamedBody78_195

def NamedBody78_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_199 : StackLang.HolProg 64 :=
.seq NamedBody78_197 NamedBody78_198

def NamedBody78_200 : StackLang.HolProg 64 :=
.seq NamedBody78_196 NamedBody78_199

def NamedBody78_201 : StackLang.HolProg 64 :=
.seq NamedBody78_121 NamedBody78_200

def NamedBody78_202 : StackLang.HolProg 64 :=
.seq NamedBody78_120 NamedBody78_201

def NamedBody78_203 : StackLang.HolProg 64 :=
.loop NamedBody78_202

def NamedBody78_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody78_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody78_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody78_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody78_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody78_217 : StackLang.HolProg 64 :=
.seq NamedBody78_215 NamedBody78_216

def NamedBody78_218 : StackLang.HolProg 64 :=
.seq NamedBody78_214 NamedBody78_217

def NamedBody78_219 : StackLang.HolProg 64 :=
.seq NamedBody78_213 NamedBody78_218

def NamedBody78_220 : StackLang.HolProg 64 :=
.seq NamedBody78_212 NamedBody78_219

def NamedBody78_221 : StackLang.HolProg 64 :=
.seq NamedBody78_211 NamedBody78_220

def NamedBody78_222 : StackLang.HolProg 64 :=
.seq NamedBody78_210 NamedBody78_221

def NamedBody78_223 : StackLang.HolProg 64 :=
.seq NamedBody78_209 NamedBody78_222

def NamedBody78_224 : StackLang.HolProg 64 :=
.seq NamedBody78_208 NamedBody78_223

def NamedBody78_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody78_227 : StackLang.HolProg 64 :=
.seq NamedBody78_225 NamedBody78_226

def NamedBody78_228 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody78_224 NamedBody78_227

def NamedBody78_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_231 : StackLang.HolProg 64 :=
.seq NamedBody78_229 NamedBody78_230

def NamedBody78_232 : StackLang.HolProg 64 :=
.seq NamedBody78_228 NamedBody78_231

def NamedBody78_233 : StackLang.HolProg 64 :=
.seq NamedBody78_207 NamedBody78_232

def NamedBody78_234 : StackLang.HolProg 64 :=
.loop NamedBody78_233

def NamedBody78_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody78_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody78_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody78_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody78_239 : StackLang.HolProg 64 :=
.seq NamedBody78_237 NamedBody78_238

def NamedBody78_240 : StackLang.HolProg 64 :=
.seq NamedBody78_236 NamedBody78_239

def NamedBody78_241 : StackLang.HolProg 64 :=
.seq NamedBody78_235 NamedBody78_240

def NamedBody78_242 : StackLang.HolProg 64 :=
.seq NamedBody78_234 NamedBody78_241

def NamedBody78_243 : StackLang.HolProg 64 :=
.seq NamedBody78_206 NamedBody78_242

def NamedBody78_244 : StackLang.HolProg 64 :=
.seq NamedBody78_205 NamedBody78_243

def NamedBody78_245 : StackLang.HolProg 64 :=
.seq NamedBody78_204 NamedBody78_244

def NamedBody78_246 : StackLang.HolProg 64 :=
.seq NamedBody78_203 NamedBody78_245

def NamedBody78_247 : StackLang.HolProg 64 :=
.seq NamedBody78_119 NamedBody78_246

def NamedBody78_248 : StackLang.HolProg 64 :=
.seq NamedBody78_118 NamedBody78_247

def NamedBody78_249 : StackLang.HolProg 64 :=
.seq NamedBody78_117 NamedBody78_248

def NamedBody78_250 : StackLang.HolProg 64 :=
.seq NamedBody78_116 NamedBody78_249

def NamedBody78_251 : StackLang.HolProg 64 :=
.seq NamedBody78_5 NamedBody78_250

def NamedBody78_252 : StackLang.HolProg 64 :=
.seq NamedBody78_4 NamedBody78_251

def NamedBody78_253 : StackLang.HolProg 64 :=
.seq NamedBody78_3 NamedBody78_252

def NamedBody78_254 : StackLang.HolProg 64 :=
.seq NamedBody78_2 NamedBody78_253

def NamedBody78_255 : StackLang.HolProg 64 :=
.seq NamedBody78_1 NamedBody78_254

def NamedBody78_256 : StackLang.HolProg 64 :=
.seq NamedBody78_0 NamedBody78_255

def Named78 : Nat × StackLang.HolProg 64 := (78, NamedBody78_256)
theorem Named78_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed78 = Named78 := by
  kernel_rfl
#print axioms Named78_eq
end InitECandidate.Proofs.BackendStages
