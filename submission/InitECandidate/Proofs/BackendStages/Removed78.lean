import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc78
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody78_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody78_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody78_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody78_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody78_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody78_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody78_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody78_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody78_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody78_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody78_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody78_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody78_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody78_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody78_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody78_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody78_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody78_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody78_34 : StackLang.HolProg 64 :=
.seq RemovedBody78_32 RemovedBody78_33

def RemovedBody78_35 : StackLang.HolProg 64 :=
.seq RemovedBody78_31 RemovedBody78_34

def RemovedBody78_36 : StackLang.HolProg 64 :=
.seq RemovedBody78_30 RemovedBody78_35

def RemovedBody78_37 : StackLang.HolProg 64 :=
.seq RemovedBody78_29 RemovedBody78_36

def RemovedBody78_38 : StackLang.HolProg 64 :=
.seq RemovedBody78_28 RemovedBody78_37

def RemovedBody78_39 : StackLang.HolProg 64 :=
.seq RemovedBody78_27 RemovedBody78_38

def RemovedBody78_40 : StackLang.HolProg 64 :=
.seq RemovedBody78_26 RemovedBody78_39

def RemovedBody78_41 : StackLang.HolProg 64 :=
.seq RemovedBody78_25 RemovedBody78_40

def RemovedBody78_42 : StackLang.HolProg 64 :=
.seq RemovedBody78_24 RemovedBody78_41

def RemovedBody78_43 : StackLang.HolProg 64 :=
.seq RemovedBody78_23 RemovedBody78_42

def RemovedBody78_44 : StackLang.HolProg 64 :=
.seq RemovedBody78_22 RemovedBody78_43

def RemovedBody78_45 : StackLang.HolProg 64 :=
.seq RemovedBody78_21 RemovedBody78_44

def RemovedBody78_46 : StackLang.HolProg 64 :=
.seq RemovedBody78_20 RemovedBody78_45

def RemovedBody78_47 : StackLang.HolProg 64 :=
.seq RemovedBody78_19 RemovedBody78_46

def RemovedBody78_48 : StackLang.HolProg 64 :=
.seq RemovedBody78_18 RemovedBody78_47

def RemovedBody78_49 : StackLang.HolProg 64 :=
.seq RemovedBody78_17 RemovedBody78_48

def RemovedBody78_50 : StackLang.HolProg 64 :=
.seq RemovedBody78_16 RemovedBody78_49

def RemovedBody78_51 : StackLang.HolProg 64 :=
.seq RemovedBody78_15 RemovedBody78_50

def RemovedBody78_52 : StackLang.HolProg 64 :=
.seq RemovedBody78_14 RemovedBody78_51

def RemovedBody78_53 : StackLang.HolProg 64 :=
.seq RemovedBody78_13 RemovedBody78_52

def RemovedBody78_54 : StackLang.HolProg 64 :=
.seq RemovedBody78_12 RemovedBody78_53

def RemovedBody78_55 : StackLang.HolProg 64 :=
.seq RemovedBody78_11 RemovedBody78_54

def RemovedBody78_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody78_59 : StackLang.HolProg 64 :=
.seq RemovedBody78_57 RemovedBody78_58

def RemovedBody78_60 : StackLang.HolProg 64 :=
.seq RemovedBody78_56 RemovedBody78_59

def RemovedBody78_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody78_55 RemovedBody78_60

def RemovedBody78_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_64 : StackLang.HolProg 64 :=
.seq RemovedBody78_62 RemovedBody78_63

def RemovedBody78_65 : StackLang.HolProg 64 :=
.seq RemovedBody78_61 RemovedBody78_64

def RemovedBody78_66 : StackLang.HolProg 64 :=
.seq RemovedBody78_10 RemovedBody78_65

def RemovedBody78_67 : StackLang.HolProg 64 :=
.seq RemovedBody78_9 RemovedBody78_66

def RemovedBody78_68 : StackLang.HolProg 64 :=
.loop RemovedBody78_67

def RemovedBody78_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody78_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody78_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody78_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody78_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody78_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody78_82 : StackLang.HolProg 64 :=
.seq RemovedBody78_80 RemovedBody78_81

def RemovedBody78_83 : StackLang.HolProg 64 :=
.seq RemovedBody78_79 RemovedBody78_82

def RemovedBody78_84 : StackLang.HolProg 64 :=
.seq RemovedBody78_78 RemovedBody78_83

def RemovedBody78_85 : StackLang.HolProg 64 :=
.seq RemovedBody78_77 RemovedBody78_84

def RemovedBody78_86 : StackLang.HolProg 64 :=
.seq RemovedBody78_76 RemovedBody78_85

def RemovedBody78_87 : StackLang.HolProg 64 :=
.seq RemovedBody78_75 RemovedBody78_86

def RemovedBody78_88 : StackLang.HolProg 64 :=
.seq RemovedBody78_74 RemovedBody78_87

def RemovedBody78_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody78_92 : StackLang.HolProg 64 :=
.seq RemovedBody78_90 RemovedBody78_91

def RemovedBody78_93 : StackLang.HolProg 64 :=
.seq RemovedBody78_89 RemovedBody78_92

def RemovedBody78_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody78_88 RemovedBody78_93

def RemovedBody78_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_97 : StackLang.HolProg 64 :=
.seq RemovedBody78_95 RemovedBody78_96

def RemovedBody78_98 : StackLang.HolProg 64 :=
.seq RemovedBody78_94 RemovedBody78_97

def RemovedBody78_99 : StackLang.HolProg 64 :=
.seq RemovedBody78_73 RemovedBody78_98

def RemovedBody78_100 : StackLang.HolProg 64 :=
.seq RemovedBody78_72 RemovedBody78_99

def RemovedBody78_101 : StackLang.HolProg 64 :=
.loop RemovedBody78_100

def RemovedBody78_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_104 : StackLang.HolProg 64 :=
.seq RemovedBody78_102 RemovedBody78_103

def RemovedBody78_105 : StackLang.HolProg 64 :=
.seq RemovedBody78_101 RemovedBody78_104

def RemovedBody78_106 : StackLang.HolProg 64 :=
.seq RemovedBody78_71 RemovedBody78_105

def RemovedBody78_107 : StackLang.HolProg 64 :=
.seq RemovedBody78_70 RemovedBody78_106

def RemovedBody78_108 : StackLang.HolProg 64 :=
.seq RemovedBody78_69 RemovedBody78_107

def RemovedBody78_109 : StackLang.HolProg 64 :=
.seq RemovedBody78_68 RemovedBody78_108

def RemovedBody78_110 : StackLang.HolProg 64 :=
.seq RemovedBody78_8 RemovedBody78_109

def RemovedBody78_111 : StackLang.HolProg 64 :=
.seq RemovedBody78_7 RemovedBody78_110

def RemovedBody78_112 : StackLang.HolProg 64 :=
.seq RemovedBody78_6 RemovedBody78_111

def RemovedBody78_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_115 : StackLang.HolProg 64 :=
.seq RemovedBody78_113 RemovedBody78_114

def RemovedBody78_116 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody78_112 RemovedBody78_115

def RemovedBody78_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody78_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody78_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody78_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody78_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody78_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody78_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody78_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody78_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody78_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody78_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody78_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody78_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody78_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody78_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody78_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody78_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody78_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody78_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody78_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody78_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody78_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody78_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody78_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody78_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody78_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody78_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody78_157 : StackLang.HolProg 64 :=
.seq RemovedBody78_155 RemovedBody78_156

def RemovedBody78_158 : StackLang.HolProg 64 :=
.seq RemovedBody78_154 RemovedBody78_157

def RemovedBody78_159 : StackLang.HolProg 64 :=
.seq RemovedBody78_153 RemovedBody78_158

def RemovedBody78_160 : StackLang.HolProg 64 :=
.seq RemovedBody78_152 RemovedBody78_159

def RemovedBody78_161 : StackLang.HolProg 64 :=
.seq RemovedBody78_151 RemovedBody78_160

def RemovedBody78_162 : StackLang.HolProg 64 :=
.seq RemovedBody78_150 RemovedBody78_161

def RemovedBody78_163 : StackLang.HolProg 64 :=
.seq RemovedBody78_149 RemovedBody78_162

def RemovedBody78_164 : StackLang.HolProg 64 :=
.seq RemovedBody78_148 RemovedBody78_163

def RemovedBody78_165 : StackLang.HolProg 64 :=
.seq RemovedBody78_147 RemovedBody78_164

def RemovedBody78_166 : StackLang.HolProg 64 :=
.seq RemovedBody78_146 RemovedBody78_165

def RemovedBody78_167 : StackLang.HolProg 64 :=
.seq RemovedBody78_145 RemovedBody78_166

def RemovedBody78_168 : StackLang.HolProg 64 :=
.seq RemovedBody78_144 RemovedBody78_167

def RemovedBody78_169 : StackLang.HolProg 64 :=
.seq RemovedBody78_143 RemovedBody78_168

def RemovedBody78_170 : StackLang.HolProg 64 :=
.seq RemovedBody78_142 RemovedBody78_169

def RemovedBody78_171 : StackLang.HolProg 64 :=
.seq RemovedBody78_141 RemovedBody78_170

def RemovedBody78_172 : StackLang.HolProg 64 :=
.seq RemovedBody78_140 RemovedBody78_171

def RemovedBody78_173 : StackLang.HolProg 64 :=
.seq RemovedBody78_139 RemovedBody78_172

def RemovedBody78_174 : StackLang.HolProg 64 :=
.seq RemovedBody78_138 RemovedBody78_173

def RemovedBody78_175 : StackLang.HolProg 64 :=
.seq RemovedBody78_137 RemovedBody78_174

def RemovedBody78_176 : StackLang.HolProg 64 :=
.seq RemovedBody78_136 RemovedBody78_175

def RemovedBody78_177 : StackLang.HolProg 64 :=
.seq RemovedBody78_135 RemovedBody78_176

def RemovedBody78_178 : StackLang.HolProg 64 :=
.seq RemovedBody78_134 RemovedBody78_177

def RemovedBody78_179 : StackLang.HolProg 64 :=
.seq RemovedBody78_133 RemovedBody78_178

def RemovedBody78_180 : StackLang.HolProg 64 :=
.seq RemovedBody78_132 RemovedBody78_179

def RemovedBody78_181 : StackLang.HolProg 64 :=
.seq RemovedBody78_131 RemovedBody78_180

def RemovedBody78_182 : StackLang.HolProg 64 :=
.seq RemovedBody78_130 RemovedBody78_181

def RemovedBody78_183 : StackLang.HolProg 64 :=
.seq RemovedBody78_129 RemovedBody78_182

def RemovedBody78_184 : StackLang.HolProg 64 :=
.seq RemovedBody78_128 RemovedBody78_183

def RemovedBody78_185 : StackLang.HolProg 64 :=
.seq RemovedBody78_127 RemovedBody78_184

def RemovedBody78_186 : StackLang.HolProg 64 :=
.seq RemovedBody78_126 RemovedBody78_185

def RemovedBody78_187 : StackLang.HolProg 64 :=
.seq RemovedBody78_125 RemovedBody78_186

def RemovedBody78_188 : StackLang.HolProg 64 :=
.seq RemovedBody78_124 RemovedBody78_187

def RemovedBody78_189 : StackLang.HolProg 64 :=
.seq RemovedBody78_123 RemovedBody78_188

def RemovedBody78_190 : StackLang.HolProg 64 :=
.seq RemovedBody78_122 RemovedBody78_189

def RemovedBody78_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody78_194 : StackLang.HolProg 64 :=
.seq RemovedBody78_192 RemovedBody78_193

def RemovedBody78_195 : StackLang.HolProg 64 :=
.seq RemovedBody78_191 RemovedBody78_194

def RemovedBody78_196 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody78_190 RemovedBody78_195

def RemovedBody78_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_199 : StackLang.HolProg 64 :=
.seq RemovedBody78_197 RemovedBody78_198

def RemovedBody78_200 : StackLang.HolProg 64 :=
.seq RemovedBody78_196 RemovedBody78_199

def RemovedBody78_201 : StackLang.HolProg 64 :=
.seq RemovedBody78_121 RemovedBody78_200

def RemovedBody78_202 : StackLang.HolProg 64 :=
.seq RemovedBody78_120 RemovedBody78_201

def RemovedBody78_203 : StackLang.HolProg 64 :=
.loop RemovedBody78_202

def RemovedBody78_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody78_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody78_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody78_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody78_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody78_217 : StackLang.HolProg 64 :=
.seq RemovedBody78_215 RemovedBody78_216

def RemovedBody78_218 : StackLang.HolProg 64 :=
.seq RemovedBody78_214 RemovedBody78_217

def RemovedBody78_219 : StackLang.HolProg 64 :=
.seq RemovedBody78_213 RemovedBody78_218

def RemovedBody78_220 : StackLang.HolProg 64 :=
.seq RemovedBody78_212 RemovedBody78_219

def RemovedBody78_221 : StackLang.HolProg 64 :=
.seq RemovedBody78_211 RemovedBody78_220

def RemovedBody78_222 : StackLang.HolProg 64 :=
.seq RemovedBody78_210 RemovedBody78_221

def RemovedBody78_223 : StackLang.HolProg 64 :=
.seq RemovedBody78_209 RemovedBody78_222

def RemovedBody78_224 : StackLang.HolProg 64 :=
.seq RemovedBody78_208 RemovedBody78_223

def RemovedBody78_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody78_227 : StackLang.HolProg 64 :=
.seq RemovedBody78_225 RemovedBody78_226

def RemovedBody78_228 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody78_224 RemovedBody78_227

def RemovedBody78_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_231 : StackLang.HolProg 64 :=
.seq RemovedBody78_229 RemovedBody78_230

def RemovedBody78_232 : StackLang.HolProg 64 :=
.seq RemovedBody78_228 RemovedBody78_231

def RemovedBody78_233 : StackLang.HolProg 64 :=
.seq RemovedBody78_207 RemovedBody78_232

def RemovedBody78_234 : StackLang.HolProg 64 :=
.loop RemovedBody78_233

def RemovedBody78_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody78_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody78_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody78_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody78_239 : StackLang.HolProg 64 :=
.seq RemovedBody78_237 RemovedBody78_238

def RemovedBody78_240 : StackLang.HolProg 64 :=
.seq RemovedBody78_236 RemovedBody78_239

def RemovedBody78_241 : StackLang.HolProg 64 :=
.seq RemovedBody78_235 RemovedBody78_240

def RemovedBody78_242 : StackLang.HolProg 64 :=
.seq RemovedBody78_234 RemovedBody78_241

def RemovedBody78_243 : StackLang.HolProg 64 :=
.seq RemovedBody78_206 RemovedBody78_242

def RemovedBody78_244 : StackLang.HolProg 64 :=
.seq RemovedBody78_205 RemovedBody78_243

def RemovedBody78_245 : StackLang.HolProg 64 :=
.seq RemovedBody78_204 RemovedBody78_244

def RemovedBody78_246 : StackLang.HolProg 64 :=
.seq RemovedBody78_203 RemovedBody78_245

def RemovedBody78_247 : StackLang.HolProg 64 :=
.seq RemovedBody78_119 RemovedBody78_246

def RemovedBody78_248 : StackLang.HolProg 64 :=
.seq RemovedBody78_118 RemovedBody78_247

def RemovedBody78_249 : StackLang.HolProg 64 :=
.seq RemovedBody78_117 RemovedBody78_248

def RemovedBody78_250 : StackLang.HolProg 64 :=
.seq RemovedBody78_116 RemovedBody78_249

def RemovedBody78_251 : StackLang.HolProg 64 :=
.seq RemovedBody78_5 RemovedBody78_250

def RemovedBody78_252 : StackLang.HolProg 64 :=
.seq RemovedBody78_4 RemovedBody78_251

def RemovedBody78_253 : StackLang.HolProg 64 :=
.seq RemovedBody78_3 RemovedBody78_252

def RemovedBody78_254 : StackLang.HolProg 64 :=
.seq RemovedBody78_2 RemovedBody78_253

def RemovedBody78_255 : StackLang.HolProg 64 :=
.seq RemovedBody78_1 RemovedBody78_254

def RemovedBody78_256 : StackLang.HolProg 64 :=
.seq RemovedBody78_0 RemovedBody78_255

def Removed78 : Nat × StackLang.HolProg 64 := (78, RemovedBody78_256)
theorem Removed78_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc78 = Removed78 := by
  kernel_rfl
#print axioms Removed78_eq
end InitECandidate.Proofs.BackendStages
