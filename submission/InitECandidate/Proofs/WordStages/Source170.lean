import InitECandidate.Proofs.WordStages.Source154
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody170_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody170_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody170_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody170_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody170_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 20) sourceBody170_2 sourceBody170_3

def sourceBody170_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody170_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_4 sourceBody170_5

def sourceBody170_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody170_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody170_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody170_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody170_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody170_8, 170, 2)) (some 159) ([10]) (some (10, sourceBody170_10, 170, 3))

def sourceBody170_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_11 sourceBody170_5

def sourceBody170_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_12 sourceBody170_8

def sourceBody170_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_9 sourceBody170_13

def sourceBody170_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_8 sourceBody170_14

def sourceBody170_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_8 sourceBody170_15

def sourceBody170_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody170_16 sourceBody170_8

def sourceBody170_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_17 sourceBody170_5

def sourceBody170_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_18 sourceBody170_8

def sourceBody170_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_7 sourceBody170_19

def sourceBody170_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_6 sourceBody170_20

def sourceBody170_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_1 sourceBody170_21

def sourceBody170_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_0 sourceBody170_22

def sourceBody170_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody170_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody170_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody170_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.reg 8) sourceBody170_26 sourceBody170_24

def sourceBody170_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_27 sourceBody170_5

def sourceBody170_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody170_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def sourceBody170_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody170_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody170_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody170_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody170_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 12) sourceBody170_33 sourceBody170_34

def sourceBody170_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_35 sourceBody170_5

def sourceBody170_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody170_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 24)

def sourceBody170_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody170_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 28) sourceBody170_39 sourceBody170_37

def sourceBody170_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_40 sourceBody170_5

def sourceBody170_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 16])

def sourceBody170_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 21#64)

def sourceBody170_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody170_8, 170, 4)) (some 159) ([10]) (some (10, sourceBody170_10, 170, 5))

def sourceBody170_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_44 sourceBody170_5

def sourceBody170_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_45 sourceBody170_8

def sourceBody170_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_43 sourceBody170_46

def sourceBody170_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_8 sourceBody170_47

def sourceBody170_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_8 sourceBody170_48

def sourceBody170_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody170_49 sourceBody170_8

def sourceBody170_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_50 sourceBody170_5

def sourceBody170_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_51 sourceBody170_8

def sourceBody170_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_42 sourceBody170_52

def sourceBody170_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_41 sourceBody170_53

def sourceBody170_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_38 sourceBody170_54

def sourceBody170_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_37 sourceBody170_55

def sourceBody170_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_36 sourceBody170_56

def sourceBody170_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_32 sourceBody170_57

def sourceBody170_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_31 sourceBody170_58

def sourceBody170_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_30 sourceBody170_59

def sourceBody170_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_29 sourceBody170_60

def sourceBody170_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_28 sourceBody170_61

def sourceBody170_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_25 sourceBody170_62

def sourceBody170_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_24 sourceBody170_63

def sourceBody170_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_6 sourceBody170_64

def sourceBody170_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_1 sourceBody170_65

def sourceBody170_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_3 sourceBody170_66

def sourceBody170_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_23 sourceBody170_67

def sourceBody170_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody170_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody170_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody170_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody170_73 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 26) sourceBody170_71 sourceBody170_72

def sourceBody170_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_73 sourceBody170_5

def sourceBody170_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody170_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def sourceBody170_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def sourceBody170_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_77 sourceBody170_8

def sourceBody170_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_76 sourceBody170_78

def sourceBody170_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 20])

def sourceBody170_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody170_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_81 sourceBody170_8

def sourceBody170_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_82 sourceBody170_8

def sourceBody170_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_80 sourceBody170_83

def sourceBody170_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_79 sourceBody170_84

def sourceBody170_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody170_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 20)

def sourceBody170_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_87 sourceBody170_8

def sourceBody170_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_88 sourceBody170_8

def sourceBody170_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_86 sourceBody170_89

def sourceBody170_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_8 sourceBody170_90

def sourceBody170_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_85 sourceBody170_91

def sourceBody170_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody170_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_92 sourceBody170_93

def sourceBody170_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody170_96 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody170_94 sourceBody170_95

def sourceBody170_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_96 sourceBody170_5

def sourceBody170_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_97 sourceBody170_8

def sourceBody170_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_75 sourceBody170_98

def sourceBody170_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_74 sourceBody170_99

def sourceBody170_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_70 sourceBody170_100

def sourceBody170_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_7 sourceBody170_101

def sourceBody170_103 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody170_102 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody170_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_103 sourceBody170_5

def sourceBody170_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_5 sourceBody170_104

def sourceBody170_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody170_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody170_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_107 sourceBody170_8

def sourceBody170_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_106 sourceBody170_108

def sourceBody170_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_105 sourceBody170_109

def sourceBody170_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_3 sourceBody170_110

def sourceBody170_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_8 sourceBody170_111

def sourceBody170_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_69 sourceBody170_112

def sourceBody170_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_8 sourceBody170_113

def sourceBody170_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody170_68 sourceBody170_114

def source170 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (170, 3, sourceBody170_115)
end InitECandidate.Proofs.WordStages
