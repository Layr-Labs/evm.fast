import InitECandidate.Proofs.WordStages.Source301
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody317_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody317_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody317_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody317_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody317_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 22) sourceBody317_2 sourceBody317_3

def sourceBody317_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody317_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_4 sourceBody317_5

def sourceBody317_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody317_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody317_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody317_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody317_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_9 sourceBody317_10

def sourceBody317_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_8 sourceBody317_11

def sourceBody317_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody317_12 sourceBody317_10

def sourceBody317_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_13 sourceBody317_5

def sourceBody317_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_14 sourceBody317_10

def sourceBody317_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_7 sourceBody317_15

def sourceBody317_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_6 sourceBody317_16

def sourceBody317_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_1 sourceBody317_17

def sourceBody317_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_0 sourceBody317_18

def sourceBody317_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody317_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody317_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody317_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody317_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 22 (Flapjack.WordRegImm.reg 10) sourceBody317_23 sourceBody317_1

def sourceBody317_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_24 sourceBody317_5

def sourceBody317_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody317_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody317_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody317_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 22)

def sourceBody317_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 10

def sourceBody317_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_30 sourceBody317_10

def sourceBody317_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_29 sourceBody317_31

def sourceBody317_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_32 sourceBody317_10

def sourceBody317_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_28 sourceBody317_33

def sourceBody317_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_10 sourceBody317_34

def sourceBody317_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_27 sourceBody317_35

def sourceBody317_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_10 sourceBody317_36

def sourceBody317_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody317_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody317_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_39 sourceBody317_10

def sourceBody317_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_38 sourceBody317_40

def sourceBody317_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_37 sourceBody317_41

def sourceBody317_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody317_42 sourceBody317_10

def sourceBody317_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_43 sourceBody317_5

def sourceBody317_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_44 sourceBody317_10

def sourceBody317_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_26 sourceBody317_45

def sourceBody317_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_25 sourceBody317_46

def sourceBody317_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_22 sourceBody317_47

def sourceBody317_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_21 sourceBody317_48

def sourceBody317_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody317_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody317_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody317_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody317_10, 317, 2)) (some 286) ([22]) (some (22, sourceBody317_52, 317, 3))

def sourceBody317_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_53 sourceBody317_5

def sourceBody317_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_54 sourceBody317_10

def sourceBody317_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_51 sourceBody317_55

def sourceBody317_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_10 sourceBody317_56

def sourceBody317_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_10 sourceBody317_57

def sourceBody317_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody317_58 sourceBody317_10

def sourceBody317_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_59 sourceBody317_5

def sourceBody317_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_60 sourceBody317_10

def sourceBody317_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_26 sourceBody317_61

def sourceBody317_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_25 sourceBody317_62

def sourceBody317_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_50 sourceBody317_63

def sourceBody317_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_21 sourceBody317_64

def sourceBody317_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_49 sourceBody317_65

def sourceBody317_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody317_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody317_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody317_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody317_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody317_10, 317, 4)) (some 292) ([22, 10, 16, 12]) (some (22, sourceBody317_52, 317, 5))

def sourceBody317_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_71 sourceBody317_5

def sourceBody317_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_72 sourceBody317_10

def sourceBody317_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_70 sourceBody317_73

def sourceBody317_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_69 sourceBody317_74

def sourceBody317_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_68 sourceBody317_75

def sourceBody317_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_67 sourceBody317_76

def sourceBody317_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 40#64])])

def sourceBody317_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody317_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody317_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody317_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody317_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 12) sourceBody317_81 sourceBody317_82

def sourceBody317_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_83 sourceBody317_5

def sourceBody317_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody317_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody317_87 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 297) ([0, 10, 16, 12]) (none)

def sourceBody317_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_87 sourceBody317_10

def sourceBody317_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_86 sourceBody317_88

def sourceBody317_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_26 sourceBody317_89

def sourceBody317_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_7 sourceBody317_90

def sourceBody317_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody317_91 sourceBody317_10

def sourceBody317_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_92 sourceBody317_5

def sourceBody317_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_93 sourceBody317_10

def sourceBody317_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_85 sourceBody317_94

def sourceBody317_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_84 sourceBody317_95

def sourceBody317_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_80 sourceBody317_96

def sourceBody317_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_79 sourceBody317_97

def sourceBody317_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody317_100 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 296) ([0, 10, 16, 12, 20]) (none)

def sourceBody317_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_100 sourceBody317_10

def sourceBody317_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_99 sourceBody317_101

def sourceBody317_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_86 sourceBody317_102

def sourceBody317_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_26 sourceBody317_103

def sourceBody317_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_7 sourceBody317_104

def sourceBody317_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_98 sourceBody317_105

def sourceBody317_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_78 sourceBody317_106

def sourceBody317_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_10 sourceBody317_107

def sourceBody317_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_77 sourceBody317_108

def sourceBody317_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_10 sourceBody317_109

def sourceBody317_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_10 sourceBody317_110

def sourceBody317_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_66 sourceBody317_111

def sourceBody317_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_20 sourceBody317_112

def sourceBody317_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_10 sourceBody317_113

def sourceBody317_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody317_19 sourceBody317_114

def source317 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (317, 5, sourceBody317_115)
end InitECandidate.Proofs.WordStages
