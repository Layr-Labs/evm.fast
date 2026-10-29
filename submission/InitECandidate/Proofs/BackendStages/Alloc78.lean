import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw78
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody78_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody78_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody78_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody78_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody78_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody78_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody78_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody78_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody78_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody78_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody78_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody78_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody78_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody78_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody78_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody78_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody78_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody78_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody78_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody78_34 : StackLang.HolProg 64 :=
.seq AllocBody78_32 AllocBody78_33

def AllocBody78_35 : StackLang.HolProg 64 :=
.seq AllocBody78_31 AllocBody78_34

def AllocBody78_36 : StackLang.HolProg 64 :=
.seq AllocBody78_30 AllocBody78_35

def AllocBody78_37 : StackLang.HolProg 64 :=
.seq AllocBody78_29 AllocBody78_36

def AllocBody78_38 : StackLang.HolProg 64 :=
.seq AllocBody78_28 AllocBody78_37

def AllocBody78_39 : StackLang.HolProg 64 :=
.seq AllocBody78_27 AllocBody78_38

def AllocBody78_40 : StackLang.HolProg 64 :=
.seq AllocBody78_26 AllocBody78_39

def AllocBody78_41 : StackLang.HolProg 64 :=
.seq AllocBody78_25 AllocBody78_40

def AllocBody78_42 : StackLang.HolProg 64 :=
.seq AllocBody78_24 AllocBody78_41

def AllocBody78_43 : StackLang.HolProg 64 :=
.seq AllocBody78_23 AllocBody78_42

def AllocBody78_44 : StackLang.HolProg 64 :=
.seq AllocBody78_22 AllocBody78_43

def AllocBody78_45 : StackLang.HolProg 64 :=
.seq AllocBody78_21 AllocBody78_44

def AllocBody78_46 : StackLang.HolProg 64 :=
.seq AllocBody78_20 AllocBody78_45

def AllocBody78_47 : StackLang.HolProg 64 :=
.seq AllocBody78_19 AllocBody78_46

def AllocBody78_48 : StackLang.HolProg 64 :=
.seq AllocBody78_18 AllocBody78_47

def AllocBody78_49 : StackLang.HolProg 64 :=
.seq AllocBody78_17 AllocBody78_48

def AllocBody78_50 : StackLang.HolProg 64 :=
.seq AllocBody78_16 AllocBody78_49

def AllocBody78_51 : StackLang.HolProg 64 :=
.seq AllocBody78_15 AllocBody78_50

def AllocBody78_52 : StackLang.HolProg 64 :=
.seq AllocBody78_14 AllocBody78_51

def AllocBody78_53 : StackLang.HolProg 64 :=
.seq AllocBody78_13 AllocBody78_52

def AllocBody78_54 : StackLang.HolProg 64 :=
.seq AllocBody78_12 AllocBody78_53

def AllocBody78_55 : StackLang.HolProg 64 :=
.seq AllocBody78_11 AllocBody78_54

def AllocBody78_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody78_59 : StackLang.HolProg 64 :=
.seq AllocBody78_57 AllocBody78_58

def AllocBody78_60 : StackLang.HolProg 64 :=
.seq AllocBody78_56 AllocBody78_59

def AllocBody78_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody78_55 AllocBody78_60

def AllocBody78_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_64 : StackLang.HolProg 64 :=
.seq AllocBody78_62 AllocBody78_63

def AllocBody78_65 : StackLang.HolProg 64 :=
.seq AllocBody78_61 AllocBody78_64

def AllocBody78_66 : StackLang.HolProg 64 :=
.seq AllocBody78_10 AllocBody78_65

def AllocBody78_67 : StackLang.HolProg 64 :=
.seq AllocBody78_9 AllocBody78_66

def AllocBody78_68 : StackLang.HolProg 64 :=
.loop AllocBody78_67

def AllocBody78_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody78_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody78_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody78_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody78_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody78_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody78_82 : StackLang.HolProg 64 :=
.seq AllocBody78_80 AllocBody78_81

def AllocBody78_83 : StackLang.HolProg 64 :=
.seq AllocBody78_79 AllocBody78_82

def AllocBody78_84 : StackLang.HolProg 64 :=
.seq AllocBody78_78 AllocBody78_83

def AllocBody78_85 : StackLang.HolProg 64 :=
.seq AllocBody78_77 AllocBody78_84

def AllocBody78_86 : StackLang.HolProg 64 :=
.seq AllocBody78_76 AllocBody78_85

def AllocBody78_87 : StackLang.HolProg 64 :=
.seq AllocBody78_75 AllocBody78_86

def AllocBody78_88 : StackLang.HolProg 64 :=
.seq AllocBody78_74 AllocBody78_87

def AllocBody78_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody78_92 : StackLang.HolProg 64 :=
.seq AllocBody78_90 AllocBody78_91

def AllocBody78_93 : StackLang.HolProg 64 :=
.seq AllocBody78_89 AllocBody78_92

def AllocBody78_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody78_88 AllocBody78_93

def AllocBody78_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_97 : StackLang.HolProg 64 :=
.seq AllocBody78_95 AllocBody78_96

def AllocBody78_98 : StackLang.HolProg 64 :=
.seq AllocBody78_94 AllocBody78_97

def AllocBody78_99 : StackLang.HolProg 64 :=
.seq AllocBody78_73 AllocBody78_98

def AllocBody78_100 : StackLang.HolProg 64 :=
.seq AllocBody78_72 AllocBody78_99

def AllocBody78_101 : StackLang.HolProg 64 :=
.loop AllocBody78_100

def AllocBody78_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_104 : StackLang.HolProg 64 :=
.seq AllocBody78_102 AllocBody78_103

def AllocBody78_105 : StackLang.HolProg 64 :=
.seq AllocBody78_101 AllocBody78_104

def AllocBody78_106 : StackLang.HolProg 64 :=
.seq AllocBody78_71 AllocBody78_105

def AllocBody78_107 : StackLang.HolProg 64 :=
.seq AllocBody78_70 AllocBody78_106

def AllocBody78_108 : StackLang.HolProg 64 :=
.seq AllocBody78_69 AllocBody78_107

def AllocBody78_109 : StackLang.HolProg 64 :=
.seq AllocBody78_68 AllocBody78_108

def AllocBody78_110 : StackLang.HolProg 64 :=
.seq AllocBody78_8 AllocBody78_109

def AllocBody78_111 : StackLang.HolProg 64 :=
.seq AllocBody78_7 AllocBody78_110

def AllocBody78_112 : StackLang.HolProg 64 :=
.seq AllocBody78_6 AllocBody78_111

def AllocBody78_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_115 : StackLang.HolProg 64 :=
.seq AllocBody78_113 AllocBody78_114

def AllocBody78_116 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody78_112 AllocBody78_115

def AllocBody78_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody78_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody78_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody78_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody78_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody78_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody78_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody78_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody78_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody78_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody78_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody78_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody78_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody78_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody78_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody78_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody78_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody78_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody78_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody78_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody78_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody78_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody78_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody78_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody78_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody78_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody78_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody78_157 : StackLang.HolProg 64 :=
.seq AllocBody78_155 AllocBody78_156

def AllocBody78_158 : StackLang.HolProg 64 :=
.seq AllocBody78_154 AllocBody78_157

def AllocBody78_159 : StackLang.HolProg 64 :=
.seq AllocBody78_153 AllocBody78_158

def AllocBody78_160 : StackLang.HolProg 64 :=
.seq AllocBody78_152 AllocBody78_159

def AllocBody78_161 : StackLang.HolProg 64 :=
.seq AllocBody78_151 AllocBody78_160

def AllocBody78_162 : StackLang.HolProg 64 :=
.seq AllocBody78_150 AllocBody78_161

def AllocBody78_163 : StackLang.HolProg 64 :=
.seq AllocBody78_149 AllocBody78_162

def AllocBody78_164 : StackLang.HolProg 64 :=
.seq AllocBody78_148 AllocBody78_163

def AllocBody78_165 : StackLang.HolProg 64 :=
.seq AllocBody78_147 AllocBody78_164

def AllocBody78_166 : StackLang.HolProg 64 :=
.seq AllocBody78_146 AllocBody78_165

def AllocBody78_167 : StackLang.HolProg 64 :=
.seq AllocBody78_145 AllocBody78_166

def AllocBody78_168 : StackLang.HolProg 64 :=
.seq AllocBody78_144 AllocBody78_167

def AllocBody78_169 : StackLang.HolProg 64 :=
.seq AllocBody78_143 AllocBody78_168

def AllocBody78_170 : StackLang.HolProg 64 :=
.seq AllocBody78_142 AllocBody78_169

def AllocBody78_171 : StackLang.HolProg 64 :=
.seq AllocBody78_141 AllocBody78_170

def AllocBody78_172 : StackLang.HolProg 64 :=
.seq AllocBody78_140 AllocBody78_171

def AllocBody78_173 : StackLang.HolProg 64 :=
.seq AllocBody78_139 AllocBody78_172

def AllocBody78_174 : StackLang.HolProg 64 :=
.seq AllocBody78_138 AllocBody78_173

def AllocBody78_175 : StackLang.HolProg 64 :=
.seq AllocBody78_137 AllocBody78_174

def AllocBody78_176 : StackLang.HolProg 64 :=
.seq AllocBody78_136 AllocBody78_175

def AllocBody78_177 : StackLang.HolProg 64 :=
.seq AllocBody78_135 AllocBody78_176

def AllocBody78_178 : StackLang.HolProg 64 :=
.seq AllocBody78_134 AllocBody78_177

def AllocBody78_179 : StackLang.HolProg 64 :=
.seq AllocBody78_133 AllocBody78_178

def AllocBody78_180 : StackLang.HolProg 64 :=
.seq AllocBody78_132 AllocBody78_179

def AllocBody78_181 : StackLang.HolProg 64 :=
.seq AllocBody78_131 AllocBody78_180

def AllocBody78_182 : StackLang.HolProg 64 :=
.seq AllocBody78_130 AllocBody78_181

def AllocBody78_183 : StackLang.HolProg 64 :=
.seq AllocBody78_129 AllocBody78_182

def AllocBody78_184 : StackLang.HolProg 64 :=
.seq AllocBody78_128 AllocBody78_183

def AllocBody78_185 : StackLang.HolProg 64 :=
.seq AllocBody78_127 AllocBody78_184

def AllocBody78_186 : StackLang.HolProg 64 :=
.seq AllocBody78_126 AllocBody78_185

def AllocBody78_187 : StackLang.HolProg 64 :=
.seq AllocBody78_125 AllocBody78_186

def AllocBody78_188 : StackLang.HolProg 64 :=
.seq AllocBody78_124 AllocBody78_187

def AllocBody78_189 : StackLang.HolProg 64 :=
.seq AllocBody78_123 AllocBody78_188

def AllocBody78_190 : StackLang.HolProg 64 :=
.seq AllocBody78_122 AllocBody78_189

def AllocBody78_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody78_194 : StackLang.HolProg 64 :=
.seq AllocBody78_192 AllocBody78_193

def AllocBody78_195 : StackLang.HolProg 64 :=
.seq AllocBody78_191 AllocBody78_194

def AllocBody78_196 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody78_190 AllocBody78_195

def AllocBody78_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_199 : StackLang.HolProg 64 :=
.seq AllocBody78_197 AllocBody78_198

def AllocBody78_200 : StackLang.HolProg 64 :=
.seq AllocBody78_196 AllocBody78_199

def AllocBody78_201 : StackLang.HolProg 64 :=
.seq AllocBody78_121 AllocBody78_200

def AllocBody78_202 : StackLang.HolProg 64 :=
.seq AllocBody78_120 AllocBody78_201

def AllocBody78_203 : StackLang.HolProg 64 :=
.loop AllocBody78_202

def AllocBody78_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody78_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody78_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody78_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody78_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody78_217 : StackLang.HolProg 64 :=
.seq AllocBody78_215 AllocBody78_216

def AllocBody78_218 : StackLang.HolProg 64 :=
.seq AllocBody78_214 AllocBody78_217

def AllocBody78_219 : StackLang.HolProg 64 :=
.seq AllocBody78_213 AllocBody78_218

def AllocBody78_220 : StackLang.HolProg 64 :=
.seq AllocBody78_212 AllocBody78_219

def AllocBody78_221 : StackLang.HolProg 64 :=
.seq AllocBody78_211 AllocBody78_220

def AllocBody78_222 : StackLang.HolProg 64 :=
.seq AllocBody78_210 AllocBody78_221

def AllocBody78_223 : StackLang.HolProg 64 :=
.seq AllocBody78_209 AllocBody78_222

def AllocBody78_224 : StackLang.HolProg 64 :=
.seq AllocBody78_208 AllocBody78_223

def AllocBody78_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody78_227 : StackLang.HolProg 64 :=
.seq AllocBody78_225 AllocBody78_226

def AllocBody78_228 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody78_224 AllocBody78_227

def AllocBody78_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_231 : StackLang.HolProg 64 :=
.seq AllocBody78_229 AllocBody78_230

def AllocBody78_232 : StackLang.HolProg 64 :=
.seq AllocBody78_228 AllocBody78_231

def AllocBody78_233 : StackLang.HolProg 64 :=
.seq AllocBody78_207 AllocBody78_232

def AllocBody78_234 : StackLang.HolProg 64 :=
.loop AllocBody78_233

def AllocBody78_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody78_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody78_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody78_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody78_239 : StackLang.HolProg 64 :=
.seq AllocBody78_237 AllocBody78_238

def AllocBody78_240 : StackLang.HolProg 64 :=
.seq AllocBody78_236 AllocBody78_239

def AllocBody78_241 : StackLang.HolProg 64 :=
.seq AllocBody78_235 AllocBody78_240

def AllocBody78_242 : StackLang.HolProg 64 :=
.seq AllocBody78_234 AllocBody78_241

def AllocBody78_243 : StackLang.HolProg 64 :=
.seq AllocBody78_206 AllocBody78_242

def AllocBody78_244 : StackLang.HolProg 64 :=
.seq AllocBody78_205 AllocBody78_243

def AllocBody78_245 : StackLang.HolProg 64 :=
.seq AllocBody78_204 AllocBody78_244

def AllocBody78_246 : StackLang.HolProg 64 :=
.seq AllocBody78_203 AllocBody78_245

def AllocBody78_247 : StackLang.HolProg 64 :=
.seq AllocBody78_119 AllocBody78_246

def AllocBody78_248 : StackLang.HolProg 64 :=
.seq AllocBody78_118 AllocBody78_247

def AllocBody78_249 : StackLang.HolProg 64 :=
.seq AllocBody78_117 AllocBody78_248

def AllocBody78_250 : StackLang.HolProg 64 :=
.seq AllocBody78_116 AllocBody78_249

def AllocBody78_251 : StackLang.HolProg 64 :=
.seq AllocBody78_5 AllocBody78_250

def AllocBody78_252 : StackLang.HolProg 64 :=
.seq AllocBody78_4 AllocBody78_251

def AllocBody78_253 : StackLang.HolProg 64 :=
.seq AllocBody78_3 AllocBody78_252

def AllocBody78_254 : StackLang.HolProg 64 :=
.seq AllocBody78_2 AllocBody78_253

def AllocBody78_255 : StackLang.HolProg 64 :=
.seq AllocBody78_1 AllocBody78_254

def AllocBody78_256 : StackLang.HolProg 64 :=
.seq AllocBody78_0 AllocBody78_255

def Alloc78 : Nat × StackLang.HolProg 64 := (78, AllocBody78_256)
theorem Alloc78_eq : StackAlloc.progComp (78, raw78) = Alloc78 := by
  kernel_rfl
#print axioms Alloc78_eq
end InitECandidate.Proofs.BackendStages
