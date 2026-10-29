import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function78
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody78_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody78_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody78_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody78_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody78_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody78_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody78_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody78_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody78_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody78_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody78_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody78_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody78_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody78_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody78_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody78_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody78_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody78_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody78_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody78_34 : StackLang.HolProg 64 :=
.seq rawBody78_32 rawBody78_33

def rawBody78_35 : StackLang.HolProg 64 :=
.seq rawBody78_31 rawBody78_34

def rawBody78_36 : StackLang.HolProg 64 :=
.seq rawBody78_30 rawBody78_35

def rawBody78_37 : StackLang.HolProg 64 :=
.seq rawBody78_29 rawBody78_36

def rawBody78_38 : StackLang.HolProg 64 :=
.seq rawBody78_28 rawBody78_37

def rawBody78_39 : StackLang.HolProg 64 :=
.seq rawBody78_27 rawBody78_38

def rawBody78_40 : StackLang.HolProg 64 :=
.seq rawBody78_26 rawBody78_39

def rawBody78_41 : StackLang.HolProg 64 :=
.seq rawBody78_25 rawBody78_40

def rawBody78_42 : StackLang.HolProg 64 :=
.seq rawBody78_24 rawBody78_41

def rawBody78_43 : StackLang.HolProg 64 :=
.seq rawBody78_23 rawBody78_42

def rawBody78_44 : StackLang.HolProg 64 :=
.seq rawBody78_22 rawBody78_43

def rawBody78_45 : StackLang.HolProg 64 :=
.seq rawBody78_21 rawBody78_44

def rawBody78_46 : StackLang.HolProg 64 :=
.seq rawBody78_20 rawBody78_45

def rawBody78_47 : StackLang.HolProg 64 :=
.seq rawBody78_19 rawBody78_46

def rawBody78_48 : StackLang.HolProg 64 :=
.seq rawBody78_18 rawBody78_47

def rawBody78_49 : StackLang.HolProg 64 :=
.seq rawBody78_17 rawBody78_48

def rawBody78_50 : StackLang.HolProg 64 :=
.seq rawBody78_16 rawBody78_49

def rawBody78_51 : StackLang.HolProg 64 :=
.seq rawBody78_15 rawBody78_50

def rawBody78_52 : StackLang.HolProg 64 :=
.seq rawBody78_14 rawBody78_51

def rawBody78_53 : StackLang.HolProg 64 :=
.seq rawBody78_13 rawBody78_52

def rawBody78_54 : StackLang.HolProg 64 :=
.seq rawBody78_12 rawBody78_53

def rawBody78_55 : StackLang.HolProg 64 :=
.seq rawBody78_11 rawBody78_54

def rawBody78_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody78_59 : StackLang.HolProg 64 :=
.seq rawBody78_57 rawBody78_58

def rawBody78_60 : StackLang.HolProg 64 :=
.seq rawBody78_56 rawBody78_59

def rawBody78_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody78_55 rawBody78_60

def rawBody78_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_64 : StackLang.HolProg 64 :=
.seq rawBody78_62 rawBody78_63

def rawBody78_65 : StackLang.HolProg 64 :=
.seq rawBody78_61 rawBody78_64

def rawBody78_66 : StackLang.HolProg 64 :=
.seq rawBody78_10 rawBody78_65

def rawBody78_67 : StackLang.HolProg 64 :=
.seq rawBody78_9 rawBody78_66

def rawBody78_68 : StackLang.HolProg 64 :=
.loop rawBody78_67

def rawBody78_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody78_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody78_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody78_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody78_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody78_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody78_82 : StackLang.HolProg 64 :=
.seq rawBody78_80 rawBody78_81

def rawBody78_83 : StackLang.HolProg 64 :=
.seq rawBody78_79 rawBody78_82

def rawBody78_84 : StackLang.HolProg 64 :=
.seq rawBody78_78 rawBody78_83

def rawBody78_85 : StackLang.HolProg 64 :=
.seq rawBody78_77 rawBody78_84

def rawBody78_86 : StackLang.HolProg 64 :=
.seq rawBody78_76 rawBody78_85

def rawBody78_87 : StackLang.HolProg 64 :=
.seq rawBody78_75 rawBody78_86

def rawBody78_88 : StackLang.HolProg 64 :=
.seq rawBody78_74 rawBody78_87

def rawBody78_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody78_92 : StackLang.HolProg 64 :=
.seq rawBody78_90 rawBody78_91

def rawBody78_93 : StackLang.HolProg 64 :=
.seq rawBody78_89 rawBody78_92

def rawBody78_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody78_88 rawBody78_93

def rawBody78_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_97 : StackLang.HolProg 64 :=
.seq rawBody78_95 rawBody78_96

def rawBody78_98 : StackLang.HolProg 64 :=
.seq rawBody78_94 rawBody78_97

def rawBody78_99 : StackLang.HolProg 64 :=
.seq rawBody78_73 rawBody78_98

def rawBody78_100 : StackLang.HolProg 64 :=
.seq rawBody78_72 rawBody78_99

def rawBody78_101 : StackLang.HolProg 64 :=
.loop rawBody78_100

def rawBody78_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_104 : StackLang.HolProg 64 :=
.seq rawBody78_102 rawBody78_103

def rawBody78_105 : StackLang.HolProg 64 :=
.seq rawBody78_101 rawBody78_104

def rawBody78_106 : StackLang.HolProg 64 :=
.seq rawBody78_71 rawBody78_105

def rawBody78_107 : StackLang.HolProg 64 :=
.seq rawBody78_70 rawBody78_106

def rawBody78_108 : StackLang.HolProg 64 :=
.seq rawBody78_69 rawBody78_107

def rawBody78_109 : StackLang.HolProg 64 :=
.seq rawBody78_68 rawBody78_108

def rawBody78_110 : StackLang.HolProg 64 :=
.seq rawBody78_8 rawBody78_109

def rawBody78_111 : StackLang.HolProg 64 :=
.seq rawBody78_7 rawBody78_110

def rawBody78_112 : StackLang.HolProg 64 :=
.seq rawBody78_6 rawBody78_111

def rawBody78_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_115 : StackLang.HolProg 64 :=
.seq rawBody78_113 rawBody78_114

def rawBody78_116 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody78_112 rawBody78_115

def rawBody78_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody78_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody78_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody78_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody78_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody78_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody78_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody78_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody78_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody78_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody78_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody78_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody78_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody78_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody78_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody78_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody78_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody78_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody78_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody78_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody78_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody78_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody78_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody78_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody78_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody78_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody78_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody78_157 : StackLang.HolProg 64 :=
.seq rawBody78_155 rawBody78_156

def rawBody78_158 : StackLang.HolProg 64 :=
.seq rawBody78_154 rawBody78_157

def rawBody78_159 : StackLang.HolProg 64 :=
.seq rawBody78_153 rawBody78_158

def rawBody78_160 : StackLang.HolProg 64 :=
.seq rawBody78_152 rawBody78_159

def rawBody78_161 : StackLang.HolProg 64 :=
.seq rawBody78_151 rawBody78_160

def rawBody78_162 : StackLang.HolProg 64 :=
.seq rawBody78_150 rawBody78_161

def rawBody78_163 : StackLang.HolProg 64 :=
.seq rawBody78_149 rawBody78_162

def rawBody78_164 : StackLang.HolProg 64 :=
.seq rawBody78_148 rawBody78_163

def rawBody78_165 : StackLang.HolProg 64 :=
.seq rawBody78_147 rawBody78_164

def rawBody78_166 : StackLang.HolProg 64 :=
.seq rawBody78_146 rawBody78_165

def rawBody78_167 : StackLang.HolProg 64 :=
.seq rawBody78_145 rawBody78_166

def rawBody78_168 : StackLang.HolProg 64 :=
.seq rawBody78_144 rawBody78_167

def rawBody78_169 : StackLang.HolProg 64 :=
.seq rawBody78_143 rawBody78_168

def rawBody78_170 : StackLang.HolProg 64 :=
.seq rawBody78_142 rawBody78_169

def rawBody78_171 : StackLang.HolProg 64 :=
.seq rawBody78_141 rawBody78_170

def rawBody78_172 : StackLang.HolProg 64 :=
.seq rawBody78_140 rawBody78_171

def rawBody78_173 : StackLang.HolProg 64 :=
.seq rawBody78_139 rawBody78_172

def rawBody78_174 : StackLang.HolProg 64 :=
.seq rawBody78_138 rawBody78_173

def rawBody78_175 : StackLang.HolProg 64 :=
.seq rawBody78_137 rawBody78_174

def rawBody78_176 : StackLang.HolProg 64 :=
.seq rawBody78_136 rawBody78_175

def rawBody78_177 : StackLang.HolProg 64 :=
.seq rawBody78_135 rawBody78_176

def rawBody78_178 : StackLang.HolProg 64 :=
.seq rawBody78_134 rawBody78_177

def rawBody78_179 : StackLang.HolProg 64 :=
.seq rawBody78_133 rawBody78_178

def rawBody78_180 : StackLang.HolProg 64 :=
.seq rawBody78_132 rawBody78_179

def rawBody78_181 : StackLang.HolProg 64 :=
.seq rawBody78_131 rawBody78_180

def rawBody78_182 : StackLang.HolProg 64 :=
.seq rawBody78_130 rawBody78_181

def rawBody78_183 : StackLang.HolProg 64 :=
.seq rawBody78_129 rawBody78_182

def rawBody78_184 : StackLang.HolProg 64 :=
.seq rawBody78_128 rawBody78_183

def rawBody78_185 : StackLang.HolProg 64 :=
.seq rawBody78_127 rawBody78_184

def rawBody78_186 : StackLang.HolProg 64 :=
.seq rawBody78_126 rawBody78_185

def rawBody78_187 : StackLang.HolProg 64 :=
.seq rawBody78_125 rawBody78_186

def rawBody78_188 : StackLang.HolProg 64 :=
.seq rawBody78_124 rawBody78_187

def rawBody78_189 : StackLang.HolProg 64 :=
.seq rawBody78_123 rawBody78_188

def rawBody78_190 : StackLang.HolProg 64 :=
.seq rawBody78_122 rawBody78_189

def rawBody78_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody78_194 : StackLang.HolProg 64 :=
.seq rawBody78_192 rawBody78_193

def rawBody78_195 : StackLang.HolProg 64 :=
.seq rawBody78_191 rawBody78_194

def rawBody78_196 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody78_190 rawBody78_195

def rawBody78_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_199 : StackLang.HolProg 64 :=
.seq rawBody78_197 rawBody78_198

def rawBody78_200 : StackLang.HolProg 64 :=
.seq rawBody78_196 rawBody78_199

def rawBody78_201 : StackLang.HolProg 64 :=
.seq rawBody78_121 rawBody78_200

def rawBody78_202 : StackLang.HolProg 64 :=
.seq rawBody78_120 rawBody78_201

def rawBody78_203 : StackLang.HolProg 64 :=
.loop rawBody78_202

def rawBody78_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody78_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody78_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody78_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody78_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody78_217 : StackLang.HolProg 64 :=
.seq rawBody78_215 rawBody78_216

def rawBody78_218 : StackLang.HolProg 64 :=
.seq rawBody78_214 rawBody78_217

def rawBody78_219 : StackLang.HolProg 64 :=
.seq rawBody78_213 rawBody78_218

def rawBody78_220 : StackLang.HolProg 64 :=
.seq rawBody78_212 rawBody78_219

def rawBody78_221 : StackLang.HolProg 64 :=
.seq rawBody78_211 rawBody78_220

def rawBody78_222 : StackLang.HolProg 64 :=
.seq rawBody78_210 rawBody78_221

def rawBody78_223 : StackLang.HolProg 64 :=
.seq rawBody78_209 rawBody78_222

def rawBody78_224 : StackLang.HolProg 64 :=
.seq rawBody78_208 rawBody78_223

def rawBody78_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody78_227 : StackLang.HolProg 64 :=
.seq rawBody78_225 rawBody78_226

def rawBody78_228 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody78_224 rawBody78_227

def rawBody78_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_231 : StackLang.HolProg 64 :=
.seq rawBody78_229 rawBody78_230

def rawBody78_232 : StackLang.HolProg 64 :=
.seq rawBody78_228 rawBody78_231

def rawBody78_233 : StackLang.HolProg 64 :=
.seq rawBody78_207 rawBody78_232

def rawBody78_234 : StackLang.HolProg 64 :=
.loop rawBody78_233

def rawBody78_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody78_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody78_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody78_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody78_239 : StackLang.HolProg 64 :=
.seq rawBody78_237 rawBody78_238

def rawBody78_240 : StackLang.HolProg 64 :=
.seq rawBody78_236 rawBody78_239

def rawBody78_241 : StackLang.HolProg 64 :=
.seq rawBody78_235 rawBody78_240

def rawBody78_242 : StackLang.HolProg 64 :=
.seq rawBody78_234 rawBody78_241

def rawBody78_243 : StackLang.HolProg 64 :=
.seq rawBody78_206 rawBody78_242

def rawBody78_244 : StackLang.HolProg 64 :=
.seq rawBody78_205 rawBody78_243

def rawBody78_245 : StackLang.HolProg 64 :=
.seq rawBody78_204 rawBody78_244

def rawBody78_246 : StackLang.HolProg 64 :=
.seq rawBody78_203 rawBody78_245

def rawBody78_247 : StackLang.HolProg 64 :=
.seq rawBody78_119 rawBody78_246

def rawBody78_248 : StackLang.HolProg 64 :=
.seq rawBody78_118 rawBody78_247

def rawBody78_249 : StackLang.HolProg 64 :=
.seq rawBody78_117 rawBody78_248

def rawBody78_250 : StackLang.HolProg 64 :=
.seq rawBody78_116 rawBody78_249

def rawBody78_251 : StackLang.HolProg 64 :=
.seq rawBody78_5 rawBody78_250

def rawBody78_252 : StackLang.HolProg 64 :=
.seq rawBody78_4 rawBody78_251

def rawBody78_253 : StackLang.HolProg 64 :=
.seq rawBody78_3 rawBody78_252

def rawBody78_254 : StackLang.HolProg 64 :=
.seq rawBody78_2 rawBody78_253

def rawBody78_255 : StackLang.HolProg 64 :=
.seq rawBody78_1 rawBody78_254

def rawBody78_256 : StackLang.HolProg 64 :=
.seq rawBody78_0 rawBody78_255

def raw78 : StackLang.HolProg 64 := rawBody78_256
theorem raw78_eq : StackRawCall.compTop RawInfo.rawInfo (function78 (.list [])).1 = raw78 := by
  kernel_rfl
#print axioms raw78_eq
end InitECandidate.Proofs.BackendStages
