import InitECandidate.Proofs.WordStages.Source298
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody314_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody314_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody314_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody314_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody314_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody314_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody314_0, 314, 2)) (some 298) ([]) (some (34, sourceBody314_4, 314, 3))

def sourceBody314_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody314_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_5 sourceBody314_6

def sourceBody314_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_7 sourceBody314_0

def sourceBody314_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 12])

def sourceBody314_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 34)

def sourceBody314_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody314_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody314_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody314_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 30 (Flapjack.WordRegImm.reg 24) sourceBody314_12 sourceBody314_13

def sourceBody314_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_14 sourceBody314_6

def sourceBody314_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 30)

def sourceBody314_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 12])

def sourceBody314_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def sourceBody314_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_18 sourceBody314_0

def sourceBody314_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_17 sourceBody314_19

def sourceBody314_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 32#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody314_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody314_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 24)

def sourceBody314_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 30) 38

def sourceBody314_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_24 sourceBody314_0

def sourceBody314_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_23 sourceBody314_25

def sourceBody314_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_26 sourceBody314_0

def sourceBody314_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_22 sourceBody314_27

def sourceBody314_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_28

def sourceBody314_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_21 sourceBody314_29

def sourceBody314_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_20 sourceBody314_30

def sourceBody314_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 38 (Flapjack.WordRegImm.imm 0#64) sourceBody314_31 sourceBody314_0

def sourceBody314_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_32 sourceBody314_6

def sourceBody314_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_33 sourceBody314_0

def sourceBody314_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_16 sourceBody314_34

def sourceBody314_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_15 sourceBody314_35

def sourceBody314_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_11 sourceBody314_36

def sourceBody314_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_10 sourceBody314_37

def sourceBody314_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 34)

def sourceBody314_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 30 (Flapjack.WordRegImm.reg 24) sourceBody314_12 sourceBody314_13

def sourceBody314_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_40 sourceBody314_6

def sourceBody314_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody314_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody314_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 28)

def sourceBody314_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody314_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody314_0, 314, 4)) (some 297) ([30, 24, 38]) (some (30, sourceBody314_45, 314, 5))

def sourceBody314_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_46 sourceBody314_6

def sourceBody314_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_47 sourceBody314_0

def sourceBody314_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_44 sourceBody314_48

def sourceBody314_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_43 sourceBody314_49

def sourceBody314_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_42 sourceBody314_50

def sourceBody314_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 12])

def sourceBody314_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 30 (Flapjack.WordLangAddr.addr 30 0#64))

def sourceBody314_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_53 sourceBody314_0

def sourceBody314_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_52 sourceBody314_54

def sourceBody314_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 32#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody314_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 18)

def sourceBody314_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 38)

def sourceBody314_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 24) 14

def sourceBody314_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_59 sourceBody314_0

def sourceBody314_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_58 sourceBody314_60

def sourceBody314_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_61 sourceBody314_0

def sourceBody314_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_57 sourceBody314_62

def sourceBody314_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_63

def sourceBody314_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_56 sourceBody314_64

def sourceBody314_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_55 sourceBody314_65

def sourceBody314_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_51 sourceBody314_66

def sourceBody314_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_67

def sourceBody314_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_68

def sourceBody314_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 38 (Flapjack.WordRegImm.imm 0#64) sourceBody314_69 sourceBody314_0

def sourceBody314_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_70 sourceBody314_6

def sourceBody314_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_71 sourceBody314_0

def sourceBody314_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_16 sourceBody314_72

def sourceBody314_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_41 sourceBody314_73

def sourceBody314_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_39 sourceBody314_74

def sourceBody314_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_12 sourceBody314_75

def sourceBody314_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_38 sourceBody314_76

def sourceBody314_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 12])

def sourceBody314_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody314_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody314_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody314_82 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 38) sourceBody314_11 sourceBody314_81

def sourceBody314_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_82 sourceBody314_6

def sourceBody314_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody314_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 160#64])

def sourceBody314_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody314_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_86 sourceBody314_27

def sourceBody314_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_87

def sourceBody314_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_85 sourceBody314_88

def sourceBody314_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_89

def sourceBody314_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 168#64])

def sourceBody314_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody314_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_92 sourceBody314_27

def sourceBody314_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_93

def sourceBody314_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_91 sourceBody314_94

def sourceBody314_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_95

def sourceBody314_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_90 sourceBody314_96

def sourceBody314_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 12])

def sourceBody314_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_98 sourceBody314_54

def sourceBody314_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody314_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 32#64,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody314_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody314_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody314_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody314_105 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 26) sourceBody314_103 sourceBody314_104

def sourceBody314_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_105 sourceBody314_6

def sourceBody314_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody314_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 11#64)

def sourceBody314_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody314_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody314_0, 314, 6)) (some 286) ([14]) (some (14, sourceBody314_109, 314, 7))

def sourceBody314_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_110 sourceBody314_6

def sourceBody314_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_111 sourceBody314_0

def sourceBody314_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_108 sourceBody314_112

def sourceBody314_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_113

def sourceBody314_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_114

def sourceBody314_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody314_115 sourceBody314_0

def sourceBody314_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_116 sourceBody314_6

def sourceBody314_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_117 sourceBody314_0

def sourceBody314_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_107 sourceBody314_118

def sourceBody314_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_106 sourceBody314_119

def sourceBody314_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_102 sourceBody314_120

def sourceBody314_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_101 sourceBody314_121

def sourceBody314_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody314_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody314_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody314_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody314_127 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody314_0, 314, 8)) (some 296) ([14, 26, 20, 32]) (some (14, sourceBody314_109, 314, 9))

def sourceBody314_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_127 sourceBody314_6

def sourceBody314_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_128 sourceBody314_0

def sourceBody314_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_126 sourceBody314_129

def sourceBody314_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_125 sourceBody314_130

def sourceBody314_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_124 sourceBody314_131

def sourceBody314_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_123 sourceBody314_132

def sourceBody314_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 32#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody314_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 38)

def sourceBody314_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 26)

def sourceBody314_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 20

def sourceBody314_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_137 sourceBody314_0

def sourceBody314_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_136 sourceBody314_138

def sourceBody314_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_139 sourceBody314_0

def sourceBody314_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_135 sourceBody314_140

def sourceBody314_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_141

def sourceBody314_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_134 sourceBody314_142

def sourceBody314_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_143

def sourceBody314_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_133 sourceBody314_144

def sourceBody314_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_145

def sourceBody314_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_146

def sourceBody314_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_122 sourceBody314_147

def sourceBody314_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_100 sourceBody314_148

def sourceBody314_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_99 sourceBody314_149

def sourceBody314_151 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody314_97 sourceBody314_150

def sourceBody314_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_151 sourceBody314_6

def sourceBody314_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_152 sourceBody314_0

def sourceBody314_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_84 sourceBody314_153

def sourceBody314_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_83 sourceBody314_154

def sourceBody314_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_80 sourceBody314_155

def sourceBody314_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_79 sourceBody314_156

def sourceBody314_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody314_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody314_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_159 sourceBody314_0

def sourceBody314_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_158 sourceBody314_160

def sourceBody314_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_157 sourceBody314_161

def sourceBody314_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_78 sourceBody314_162

def sourceBody314_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_163

def sourceBody314_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_77 sourceBody314_164

def sourceBody314_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_9 sourceBody314_165

def sourceBody314_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_166

def sourceBody314_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_8 sourceBody314_167

def sourceBody314_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_168

def sourceBody314_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_169

def sourceBody314_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_3 sourceBody314_170

def sourceBody314_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_171

def sourceBody314_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_2 sourceBody314_172

def sourceBody314_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_173

def sourceBody314_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_1 sourceBody314_174

def sourceBody314_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody314_0 sourceBody314_175

def source314 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (314, 7, sourceBody314_176)
end InitECandidate.Proofs.WordStages
