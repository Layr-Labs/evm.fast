import InitECandidate.Proofs.WordStages.Source78
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody94_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody94_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody94_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody94_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody94_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 14) sourceBody94_2 sourceBody94_3

def sourceBody94_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody94_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_4 sourceBody94_5

def sourceBody94_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody94_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody94_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody94_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody94_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody94_8, 94, 2)) (some 66) ([8]) (some (8, sourceBody94_10, 94, 3))

def sourceBody94_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_11 sourceBody94_5

def sourceBody94_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_12 sourceBody94_8

def sourceBody94_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_9 sourceBody94_13

def sourceBody94_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_8 sourceBody94_14

def sourceBody94_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_8 sourceBody94_15

def sourceBody94_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody94_16 sourceBody94_8

def sourceBody94_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_17 sourceBody94_5

def sourceBody94_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_18 sourceBody94_8

def sourceBody94_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_7 sourceBody94_19

def sourceBody94_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_6 sourceBody94_20

def sourceBody94_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_1 sourceBody94_21

def sourceBody94_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_0 sourceBody94_22

def sourceBody94_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody94_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody94_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 14) sourceBody94_2 sourceBody94_3

def sourceBody94_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_26 sourceBody94_5

def sourceBody94_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody94_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16, 8]

def sourceBody94_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_29 sourceBody94_8

def sourceBody94_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_24 sourceBody94_30

def sourceBody94_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_28 sourceBody94_31

def sourceBody94_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody94_32 sourceBody94_8

def sourceBody94_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_33 sourceBody94_5

def sourceBody94_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_34 sourceBody94_8

def sourceBody94_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_7 sourceBody94_35

def sourceBody94_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_27 sourceBody94_36

def sourceBody94_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_25 sourceBody94_37

def sourceBody94_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_24 sourceBody94_38

def sourceBody94_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_23 sourceBody94_39

def sourceBody94_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody94_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody94_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 14)

def sourceBody94_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody94_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 18 (Flapjack.WordRegImm.reg 6) sourceBody94_44 sourceBody94_42

def sourceBody94_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_45 sourceBody94_5

def sourceBody94_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody94_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody94_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody94_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_49 sourceBody94_8

def sourceBody94_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_50 sourceBody94_8

def sourceBody94_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_48 sourceBody94_51

def sourceBody94_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_8 sourceBody94_52

def sourceBody94_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
        [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
            (Flapjack.WordLangExpHOL.var 14),
          Flapjack.WordLangExpHOL.const 1#64]])

def sourceBody94_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody94_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_55 sourceBody94_8

def sourceBody94_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_56 sourceBody94_8

def sourceBody94_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_54 sourceBody94_57

def sourceBody94_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_8 sourceBody94_58

def sourceBody94_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_53 sourceBody94_59

def sourceBody94_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody94_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody94_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 18 (Flapjack.WordRegImm.reg 6) sourceBody94_44 sourceBody94_42

def sourceBody94_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_63 sourceBody94_5

def sourceBody94_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 4])

def sourceBody94_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_65 sourceBody94_57

def sourceBody94_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_8 sourceBody94_66

def sourceBody94_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 16,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.const 1#64)
        (Flapjack.WordLangExpHOL.var 14)])

def sourceBody94_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody94_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_69 sourceBody94_8

def sourceBody94_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_70 sourceBody94_8

def sourceBody94_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_68 sourceBody94_71

def sourceBody94_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_8 sourceBody94_72

def sourceBody94_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_67 sourceBody94_73

def sourceBody94_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody94_74 sourceBody94_8

def sourceBody94_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_75 sourceBody94_5

def sourceBody94_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_76 sourceBody94_8

def sourceBody94_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_47 sourceBody94_77

def sourceBody94_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_64 sourceBody94_78

def sourceBody94_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_62 sourceBody94_79

def sourceBody94_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_61 sourceBody94_80

def sourceBody94_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_60 sourceBody94_81

def sourceBody94_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody94_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_82 sourceBody94_83

def sourceBody94_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody94_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody94_84 sourceBody94_85

def sourceBody94_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_86 sourceBody94_5

def sourceBody94_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_87 sourceBody94_8

def sourceBody94_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_47 sourceBody94_88

def sourceBody94_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_46 sourceBody94_89

def sourceBody94_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_43 sourceBody94_90

def sourceBody94_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_42 sourceBody94_91

def sourceBody94_93 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody94_92 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody94_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_93 sourceBody94_5

def sourceBody94_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_5 sourceBody94_94

def sourceBody94_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody94_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10, 18]

def sourceBody94_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_97 sourceBody94_8

def sourceBody94_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_61 sourceBody94_98

def sourceBody94_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_96 sourceBody94_99

def sourceBody94_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_95 sourceBody94_100

def sourceBody94_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_41 sourceBody94_101

def sourceBody94_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_8 sourceBody94_102

def sourceBody94_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_3 sourceBody94_103

def sourceBody94_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_8 sourceBody94_104

def sourceBody94_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_28 sourceBody94_105

def sourceBody94_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_8 sourceBody94_106

def sourceBody94_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody94_40 sourceBody94_107

def source94 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (94, 3, sourceBody94_108)
end InitECandidate.Proofs.WordStages
