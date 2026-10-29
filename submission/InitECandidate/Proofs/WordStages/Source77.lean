import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody77_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody77_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody77_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 4],
      Flapjack.WordLangExpHOL.const 7#64])

def sourceBody77_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody77_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody77_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody77_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 16) sourceBody77_4 sourceBody77_5

def sourceBody77_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody77_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_6 sourceBody77_7

def sourceBody77_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody77_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody77_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody77_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.WordRegImm.reg 16) sourceBody77_4 sourceBody77_5

def sourceBody77_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_12 sourceBody77_7

def sourceBody77_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def sourceBody77_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10]))

def sourceBody77_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody77_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 16

def sourceBody77_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_17 sourceBody77_0

def sourceBody77_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_16 sourceBody77_18

def sourceBody77_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_19 sourceBody77_0

def sourceBody77_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_15 sourceBody77_20

def sourceBody77_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_0 sourceBody77_21

def sourceBody77_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_14 sourceBody77_22

def sourceBody77_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_0 sourceBody77_23

def sourceBody77_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody77_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody77_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_26 sourceBody77_20

def sourceBody77_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_0 sourceBody77_27

def sourceBody77_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_25 sourceBody77_28

def sourceBody77_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_0 sourceBody77_29

def sourceBody77_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_24 sourceBody77_30

def sourceBody77_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody77_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody77_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_33 sourceBody77_20

def sourceBody77_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_0 sourceBody77_34

def sourceBody77_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_32 sourceBody77_35

def sourceBody77_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_0 sourceBody77_36

def sourceBody77_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_31 sourceBody77_37

def sourceBody77_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody77_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody77_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_40 sourceBody77_20

def sourceBody77_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_0 sourceBody77_41

def sourceBody77_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_39 sourceBody77_42

def sourceBody77_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_0 sourceBody77_43

def sourceBody77_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_38 sourceBody77_44

def sourceBody77_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody77_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody77_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_47 sourceBody77_0

def sourceBody77_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_48 sourceBody77_0

def sourceBody77_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_46 sourceBody77_49

def sourceBody77_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_0 sourceBody77_50

def sourceBody77_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_45 sourceBody77_51

def sourceBody77_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody77_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_52 sourceBody77_53

def sourceBody77_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody77_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody77_54 sourceBody77_55

def sourceBody77_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_56 sourceBody77_7

def sourceBody77_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_57 sourceBody77_0

def sourceBody77_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_9 sourceBody77_58

def sourceBody77_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_13 sourceBody77_59

def sourceBody77_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_11 sourceBody77_60

def sourceBody77_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_10 sourceBody77_61

def sourceBody77_63 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody77_62 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody77_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_63 sourceBody77_7

def sourceBody77_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_7 sourceBody77_64

def sourceBody77_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody77_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody77_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_67 sourceBody77_49

def sourceBody77_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_0 sourceBody77_68

def sourceBody77_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_24 sourceBody77_69

def sourceBody77_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_70 sourceBody77_53

def sourceBody77_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody77_71 sourceBody77_55

def sourceBody77_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_72 sourceBody77_7

def sourceBody77_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_73 sourceBody77_0

def sourceBody77_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_9 sourceBody77_74

def sourceBody77_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_13 sourceBody77_75

def sourceBody77_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_66 sourceBody77_76

def sourceBody77_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_10 sourceBody77_77

def sourceBody77_79 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody77_78 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody77_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_79 sourceBody77_7

def sourceBody77_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_7 sourceBody77_80

def sourceBody77_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_65 sourceBody77_81

def sourceBody77_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody77_82 sourceBody77_0

def sourceBody77_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_83 sourceBody77_7

def sourceBody77_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_84 sourceBody77_0

def sourceBody77_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_9 sourceBody77_85

def sourceBody77_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_8 sourceBody77_86

def sourceBody77_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_3 sourceBody77_87

def sourceBody77_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_2 sourceBody77_88

def sourceBody77_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10])

def sourceBody77_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def sourceBody77_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def sourceBody77_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody77_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 16 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody77_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_94 sourceBody77_0

def sourceBody77_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_93 sourceBody77_95

def sourceBody77_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_92 sourceBody77_96

def sourceBody77_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_91 sourceBody77_97

def sourceBody77_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_90 sourceBody77_98

def sourceBody77_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody77_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody77_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_101 sourceBody77_96

def sourceBody77_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_91 sourceBody77_102

def sourceBody77_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_100 sourceBody77_103

def sourceBody77_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_99 sourceBody77_104

def sourceBody77_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody77_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody77_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_107 sourceBody77_96

def sourceBody77_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_91 sourceBody77_108

def sourceBody77_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_106 sourceBody77_109

def sourceBody77_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_105 sourceBody77_110

def sourceBody77_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody77_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody77_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_113 sourceBody77_96

def sourceBody77_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_91 sourceBody77_114

def sourceBody77_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_112 sourceBody77_115

def sourceBody77_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_111 sourceBody77_116

def sourceBody77_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody77_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody77_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_119 sourceBody77_96

def sourceBody77_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_91 sourceBody77_120

def sourceBody77_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_118 sourceBody77_121

def sourceBody77_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_117 sourceBody77_122

def sourceBody77_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 5#64])

def sourceBody77_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 5#64])

def sourceBody77_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_125 sourceBody77_96

def sourceBody77_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_91 sourceBody77_126

def sourceBody77_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_124 sourceBody77_127

def sourceBody77_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_123 sourceBody77_128

def sourceBody77_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 6#64])

def sourceBody77_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 6#64])

def sourceBody77_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_131 sourceBody77_96

def sourceBody77_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_91 sourceBody77_132

def sourceBody77_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_130 sourceBody77_133

def sourceBody77_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_129 sourceBody77_134

def sourceBody77_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 7#64])

def sourceBody77_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 7#64])

def sourceBody77_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_137 sourceBody77_96

def sourceBody77_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_91 sourceBody77_138

def sourceBody77_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_136 sourceBody77_139

def sourceBody77_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_135 sourceBody77_140

def sourceBody77_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_141 sourceBody77_69

def sourceBody77_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_142 sourceBody77_53

def sourceBody77_144 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody77_143 sourceBody77_55

def sourceBody77_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_144 sourceBody77_7

def sourceBody77_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_145 sourceBody77_0

def sourceBody77_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_9 sourceBody77_146

def sourceBody77_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_13 sourceBody77_147

def sourceBody77_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_66 sourceBody77_148

def sourceBody77_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_10 sourceBody77_149

def sourceBody77_151 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody77_150 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody77_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_151 sourceBody77_7

def sourceBody77_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_7 sourceBody77_152

def sourceBody77_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_89 sourceBody77_153

def sourceBody77_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody77_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody77_157 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 16) sourceBody77_4 sourceBody77_5

def sourceBody77_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_157 sourceBody77_7

def sourceBody77_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody77_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_159 sourceBody77_49

def sourceBody77_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_0 sourceBody77_160

def sourceBody77_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_99 sourceBody77_161

def sourceBody77_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_162 sourceBody77_53

def sourceBody77_164 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody77_163 sourceBody77_55

def sourceBody77_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_164 sourceBody77_7

def sourceBody77_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_165 sourceBody77_0

def sourceBody77_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_9 sourceBody77_166

def sourceBody77_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_158 sourceBody77_167

def sourceBody77_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_156 sourceBody77_168

def sourceBody77_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_155 sourceBody77_169

def sourceBody77_171 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody77_170 (Flapjack.Spt.ls PUnit.unit)

def sourceBody77_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_171 sourceBody77_7

def sourceBody77_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_7 sourceBody77_172

def sourceBody77_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_154 sourceBody77_173

def sourceBody77_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody77_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody77_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_176 sourceBody77_0

def sourceBody77_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_175 sourceBody77_177

def sourceBody77_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_174 sourceBody77_178

def sourceBody77_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_1 sourceBody77_179

def sourceBody77_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody77_0 sourceBody77_180

def source77 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (77, 4, sourceBody77_181)
end InitECandidate.Proofs.WordStages
