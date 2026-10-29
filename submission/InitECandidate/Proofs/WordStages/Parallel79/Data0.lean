import InitECandidate.Proofs.WordStages.Source79
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel79
def word79_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def word79_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 4],
      Flapjack.WordLangExpHOL.const 7#64])

def word79_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_0 word79_0_1

def word79_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def word79_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_2 word79_0_3

def word79_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def word79_0_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word79_0_7 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_5 word79_0_6

def word79_0_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def word79_0_9 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_7 word79_0_8

def word79_0_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def word79_0_11 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_9 word79_0_10

def word79_0_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 20#64)

def word79_0_13 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_11 word79_0_12

def word79_0_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 2))

def word79_0_15 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_9 word79_0_14

def word79_0_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 4))

def word79_0_17 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_15 word79_0_16

def word79_0_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def word79_0_19 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_9 word79_0_18

def word79_0_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def word79_0_21 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_19 word79_0_20

def word79_0_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word79_0_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 20) word79_0_21 word79_0_22

def word79_0_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def word79_0_25 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_24 word79_0_6

def word79_0_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def word79_0_27 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_25 word79_0_26

def word79_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_23 word79_0_27

def word79_0_29 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_17 word79_0_28

def word79_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_29 word79_0_6

def word79_0_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def word79_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_30 word79_0_31

def word79_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64]))

def word79_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_32 word79_0_33

def word79_0_35 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_34 word79_0_28

def word79_0_36 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_35 word79_0_6

def word79_0_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64])

def word79_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_36 word79_0_37

def word79_0_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def word79_0_40 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_38 word79_0_39

def word79_0_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64])

def word79_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_40 word79_0_41

def word79_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def word79_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_42 word79_0_43

def word79_0_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def word79_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_44 word79_0_45

def word79_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def word79_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_46 word79_0_47

def word79_0_49 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_8 word79_0_6

def word79_0_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def word79_0_51 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_49 word79_0_50

def word79_0_52 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_51 word79_0_18

def word79_0_53 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_52 word79_0_20

def word79_0_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 16) word79_0_53 word79_0_22

def word79_0_55 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_26 word79_0_6

def word79_0_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def word79_0_57 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_55 word79_0_56

def word79_0_58 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_54 word79_0_57

def word79_0_59 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_48 word79_0_58

def word79_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_59 word79_0_6

def word79_0_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 17#64])

def word79_0_62 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_60 word79_0_61

def word79_0_63 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_62 word79_0_39

def word79_0_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 17#64])

def word79_0_65 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_63 word79_0_64

def word79_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_65 word79_0_43

def word79_0_67 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_66 word79_0_45

def word79_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_67 word79_0_47

def word79_0_69 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_68 word79_0_58

def word79_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_69 word79_0_6

def word79_0_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 18#64])

def word79_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_70 word79_0_71

def word79_0_73 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_72 word79_0_39

def word79_0_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 18#64])

def word79_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_73 word79_0_74

def word79_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_75 word79_0_43

def word79_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_76 word79_0_45

def word79_0_78 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_77 word79_0_47

def word79_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_78 word79_0_58

def word79_0_80 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_79 word79_0_6

def word79_0_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 19#64])

def word79_0_82 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_80 word79_0_81

def word79_0_83 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_82 word79_0_39

def word79_0_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 19#64])

def word79_0_85 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_83 word79_0_84

def word79_0_86 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_85 word79_0_43

def word79_0_87 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_86 word79_0_45

def word79_0_88 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_87 word79_0_47

def word79_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_88 word79_0_58

def word79_0_90 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_89 word79_0_6

def word79_0_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def word79_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_90 word79_0_91

def word79_0_93 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_92 word79_0_20

def word79_0_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 20) word79_0_93 word79_0_22

def word79_0_95 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_94 word79_0_27

def word79_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_13 word79_0_95

def word79_0_97 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_96 word79_0_6

def word79_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_97 word79_0_10

def word79_0_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 32#64)

def word79_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_98 word79_0_99

def word79_0_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def word79_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_36 word79_0_101

def word79_0_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64]))

def word79_0_104 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_102 word79_0_103

def word79_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_104 word79_0_28

def word79_0_106 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_105 word79_0_6

def word79_0_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def word79_0_108 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_106 word79_0_107

def word79_0_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64]))

def word79_0_110 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_108 word79_0_109

def word79_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_110 word79_0_28

def word79_0_112 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_111 word79_0_6

def word79_0_113 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_112 word79_0_91

def word79_0_114 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_113 word79_0_20

def word79_0_115 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 20) word79_0_114 word79_0_22

def word79_0_116 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_115 word79_0_27

def word79_0_117 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_100 word79_0_116

def word79_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_117 word79_0_6

def word79_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_118 word79_0_10

def word79_0_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 52#64)

def word79_0_121 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_119 word79_0_120

def word79_0_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def word79_0_123 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_112 word79_0_122

def word79_0_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64]))

def word79_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_123 word79_0_124

def word79_0_126 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_125 word79_0_28

def word79_0_127 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_126 word79_0_6

def word79_0_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def word79_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_127 word79_0_128

def word79_0_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 40#64]))

def word79_0_131 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_129 word79_0_130

def word79_0_132 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_131 word79_0_28

def word79_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_132 word79_0_6

def word79_0_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def word79_0_135 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_133 word79_0_134

def word79_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_135 word79_0_39

def word79_0_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64])

def word79_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_136 word79_0_137

def word79_0_139 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_138 word79_0_43

def word79_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_139 word79_0_45

def word79_0_141 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_140 word79_0_47

def word79_0_142 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_141 word79_0_58

def word79_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_142 word79_0_6

def word79_0_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 49#64])

def word79_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_143 word79_0_144

def word79_0_146 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_145 word79_0_39

def word79_0_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 49#64])

def word79_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_146 word79_0_147

def word79_0_149 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_148 word79_0_43

def word79_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_149 word79_0_45

def word79_0_151 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_150 word79_0_47

def word79_0_152 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_151 word79_0_58

def word79_0_153 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_152 word79_0_6

def word79_0_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 50#64])

def word79_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_153 word79_0_154

def word79_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_155 word79_0_39

def word79_0_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 50#64])

def word79_0_158 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_156 word79_0_157

def word79_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_158 word79_0_43

def word79_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_159 word79_0_45

def word79_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_160 word79_0_47

def word79_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_161 word79_0_58

def word79_0_163 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_162 word79_0_6

def word79_0_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 51#64])

def word79_0_165 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_163 word79_0_164

def word79_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_165 word79_0_39

def word79_0_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 51#64])

def word79_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_166 word79_0_167

def word79_0_169 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_168 word79_0_43

def word79_0_170 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_169 word79_0_45

def word79_0_171 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_170 word79_0_47

def word79_0_172 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_171 word79_0_58

def word79_0_173 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_172 word79_0_6

def word79_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_173 word79_0_91

def word79_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_174 word79_0_20

def word79_0_176 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 20) word79_0_175 word79_0_22

def word79_0_177 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_176 word79_0_27

def word79_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_121 word79_0_177

def word79_0_179 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_178 word79_0_6

def word79_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_179 word79_0_6

def word79_0_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 32#64])

def word79_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_10 word79_0_181

def word79_0_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10]))

def word79_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_9 word79_0_183

def word79_0_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10]))

def word79_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_184 word79_0_185

def word79_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_186 word79_0_28

def word79_0_188 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_187 word79_0_6

def word79_0_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 8#64]))

def word79_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_188 word79_0_189

def word79_0_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 8#64]))

def word79_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_190 word79_0_191

def word79_0_193 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_192 word79_0_28

def word79_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_193 word79_0_6

def word79_0_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 16#64]))

def word79_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_194 word79_0_195

def word79_0_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 16#64]))

def word79_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_196 word79_0_197

def word79_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_198 word79_0_28

def word79_0_200 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_199 word79_0_6

def word79_0_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 24#64]))

def word79_0_202 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_200 word79_0_201

def word79_0_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 24#64]))

def word79_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_202 word79_0_203

def word79_0_205 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_204 word79_0_28

def word79_0_206 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_205 word79_0_6

def word79_0_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 32#64])

def word79_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_206 word79_0_207

def word79_0_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def word79_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_208 word79_0_209

def word79_0_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word79_0_212 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_210 word79_0_211

def word79_0_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word79_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_27 word79_0_213

def word79_0_215 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 14 (Flapjack.WordRegImm.reg 20) word79_0_212 word79_0_214

def word79_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_182 word79_0_215

def word79_0_217 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_216 word79_0_6

def word79_0_218 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) word79_0_217 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def word79_0_219 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_180 word79_0_218

def word79_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_219 word79_0_6

def word79_0_221 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_220 word79_0_6

def word79_0_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 8#64])

def word79_0_223 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_10 word79_0_222

def word79_0_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 8#64])

def word79_0_225 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_188 word79_0_224

def word79_0_226 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_225 word79_0_209

def word79_0_227 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_226 word79_0_211

def word79_0_228 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 14 (Flapjack.WordRegImm.reg 20) word79_0_227 word79_0_214

def word79_0_229 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_223 word79_0_228

def word79_0_230 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_229 word79_0_6

def word79_0_231 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) word79_0_230 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def word79_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_221 word79_0_231

def word79_0_233 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_232 word79_0_6

def word79_0_234 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 20) word79_0_233 word79_0_27

def word79_0_235 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_4 word79_0_234

def word79_0_236 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_235 word79_0_6

def word79_0_237 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_236 word79_0_6

def word79_0_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def word79_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_9 word79_0_238

def word79_0_240 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_239 word79_0_39

def word79_0_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10])

def word79_0_242 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_240 word79_0_241

def word79_0_243 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_242 word79_0_43

def word79_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_243 word79_0_45

def word79_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_244 word79_0_47

def word79_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_245 word79_0_58

def word79_0_247 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_246 word79_0_6

def word79_0_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def word79_0_249 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_247 word79_0_248

def word79_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_249 word79_0_39

def word79_0_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def word79_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_250 word79_0_251

def word79_0_253 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_252 word79_0_43

def word79_0_254 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_253 word79_0_45

def word79_0_255 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_254 word79_0_47

def word79_0_256 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_255 word79_0_58

def word79_0_257 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_256 word79_0_6

def word79_0_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 2#64])

def word79_0_259 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_257 word79_0_258

def word79_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_259 word79_0_39

def word79_0_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 2#64])

def word79_0_262 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_260 word79_0_261

def word79_0_263 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_262 word79_0_43

def word79_0_264 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_263 word79_0_45

def word79_0_265 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_264 word79_0_47

def word79_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_265 word79_0_58

def word79_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_266 word79_0_6

def word79_0_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 3#64])

def word79_0_269 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_267 word79_0_268

def word79_0_270 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_269 word79_0_39

def word79_0_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 3#64])

def word79_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_270 word79_0_271

def word79_0_273 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_272 word79_0_43

def word79_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_273 word79_0_45

def word79_0_275 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_274 word79_0_47

def word79_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_275 word79_0_58

def word79_0_277 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_276 word79_0_6

def word79_0_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 4#64])

def word79_0_279 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_277 word79_0_278

def word79_0_280 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_279 word79_0_39

def word79_0_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 4#64])

def word79_0_282 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_280 word79_0_281

def word79_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_282 word79_0_43

def word79_0_284 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_283 word79_0_45

def word79_0_285 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_284 word79_0_47

def word79_0_286 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_285 word79_0_58

def word79_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_286 word79_0_6

def word79_0_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 5#64])

def word79_0_289 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_287 word79_0_288

def word79_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_289 word79_0_39

def word79_0_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 5#64])

def word79_0_292 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_290 word79_0_291

def word79_0_293 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_292 word79_0_43

def word79_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_293 word79_0_45

def word79_0_295 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_294 word79_0_47

def word79_0_296 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_295 word79_0_58

def word79_0_297 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_296 word79_0_6

def word79_0_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 6#64])

def word79_0_299 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_297 word79_0_298

def word79_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_299 word79_0_39

def word79_0_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 6#64])

def word79_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_300 word79_0_301

def word79_0_303 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_302 word79_0_43

def word79_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_303 word79_0_45

def word79_0_305 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_304 word79_0_47

def word79_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_305 word79_0_58

def word79_0_307 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_306 word79_0_6

def word79_0_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 7#64])

def word79_0_309 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_307 word79_0_308

def word79_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_309 word79_0_39

def word79_0_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 7#64])

def word79_0_312 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_310 word79_0_311

def word79_0_313 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_312 word79_0_43

def word79_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_313 word79_0_45

def word79_0_315 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_314 word79_0_47

def word79_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_315 word79_0_58

def word79_0_317 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_316 word79_0_6

def word79_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_317 word79_0_224

def word79_0_319 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_318 word79_0_209

def word79_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_319 word79_0_211

def word79_0_321 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 14 (Flapjack.WordRegImm.reg 20) word79_0_320 word79_0_214

def word79_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_223 word79_0_321

def word79_0_323 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_322 word79_0_6

def word79_0_324 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) word79_0_323 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def word79_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_237 word79_0_324

def word79_0_326 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_325 word79_0_6

def word79_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_326 word79_0_6

def word79_0_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def word79_0_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def word79_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_328 word79_0_329

def word79_0_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def word79_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_247 word79_0_331

def word79_0_333 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_332 word79_0_209

def word79_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_333 word79_0_211

def word79_0_335 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 20) word79_0_334 word79_0_214

def word79_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_330 word79_0_335

def word79_0_337 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_336 word79_0_6

def word79_0_338 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) word79_0_337 (Flapjack.Spt.ls PUnit.unit)

def word79_0_339 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_327 word79_0_338

def word79_0_340 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_339 word79_0_6

def word79_0_341 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_340 word79_0_91

def word79_0_342 : WordLangProgHOL (BitVec 64) :=
.seq word79_0_341 word79_0_20

def pass79_0 : WordLangProgHOL (BitVec 64) :=
word79_0_342
end InitECandidate.Proofs.WordStages.Parallel79
