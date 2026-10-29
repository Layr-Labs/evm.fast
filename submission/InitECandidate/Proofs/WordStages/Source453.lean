import InitECandidate.Proofs.WordStages.Source437
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody453_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody453_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 216#64]))

def sourceBody453_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody453_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody453_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 20]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody453_0, 453, 2)) (some 186) ([16, 24]) (some (16, sourceBody453_3, 453, 3))

def sourceBody453_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody453_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_4 sourceBody453_5

def sourceBody453_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_6 sourceBody453_0

def sourceBody453_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_2 sourceBody453_7

def sourceBody453_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_1 sourceBody453_8

def sourceBody453_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody453_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody453_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody453_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody453_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 8) sourceBody453_12 sourceBody453_13

def sourceBody453_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_14 sourceBody453_5

def sourceBody453_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody453_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody453_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody453_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_18 sourceBody453_0

def sourceBody453_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_17 sourceBody453_19

def sourceBody453_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody453_20 sourceBody453_0

def sourceBody453_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_21 sourceBody453_5

def sourceBody453_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_22 sourceBody453_0

def sourceBody453_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_16 sourceBody453_23

def sourceBody453_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_15 sourceBody453_24

def sourceBody453_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_11 sourceBody453_25

def sourceBody453_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_10 sourceBody453_26

def sourceBody453_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody453_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody453_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody453_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody453_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([24, 8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody453_0, 453, 4)) (some 186) ([18, 14]) (some (18, sourceBody453_31, 453, 5))

def sourceBody453_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_32 sourceBody453_5

def sourceBody453_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_33 sourceBody453_0

def sourceBody453_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_30 sourceBody453_34

def sourceBody453_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_29 sourceBody453_35

def sourceBody453_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody453_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody453_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody453_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody453_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 22) sourceBody453_39 sourceBody453_40

def sourceBody453_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_41 sourceBody453_5

def sourceBody453_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody453_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody453_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody453_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_45 sourceBody453_0

def sourceBody453_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_44 sourceBody453_46

def sourceBody453_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody453_47 sourceBody453_0

def sourceBody453_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_48 sourceBody453_5

def sourceBody453_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_49 sourceBody453_0

def sourceBody453_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_43 sourceBody453_50

def sourceBody453_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_42 sourceBody453_51

def sourceBody453_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_38 sourceBody453_52

def sourceBody453_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_37 sourceBody453_53

def sourceBody453_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody453_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 40#64)

def sourceBody453_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody453_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody453_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody453_0, 453, 6)) (some 451) ([14, 22, 12]) (some (14, sourceBody453_58, 453, 7))

def sourceBody453_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_59 sourceBody453_5

def sourceBody453_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_60 sourceBody453_0

def sourceBody453_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_57 sourceBody453_61

def sourceBody453_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_56 sourceBody453_62

def sourceBody453_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_55 sourceBody453_63

def sourceBody453_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_0 sourceBody453_64

def sourceBody453_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_0 sourceBody453_65

def sourceBody453_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_54 sourceBody453_66

def sourceBody453_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody453_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody453_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody453_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody453_0, 453, 8)) (some 193) ([14, 22]) (some (14, sourceBody453_58, 453, 9))

def sourceBody453_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_71 sourceBody453_5

def sourceBody453_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_72 sourceBody453_0

def sourceBody453_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_70 sourceBody453_73

def sourceBody453_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_69 sourceBody453_74

def sourceBody453_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_0 sourceBody453_75

def sourceBody453_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_0 sourceBody453_76

def sourceBody453_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody453_77 sourceBody453_0

def sourceBody453_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_78 sourceBody453_5

def sourceBody453_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_79 sourceBody453_0

def sourceBody453_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_43 sourceBody453_80

def sourceBody453_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_42 sourceBody453_81

def sourceBody453_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_38 sourceBody453_82

def sourceBody453_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_68 sourceBody453_83

def sourceBody453_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_67 sourceBody453_84

def sourceBody453_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_85 sourceBody453_47

def sourceBody453_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_36 sourceBody453_86

def sourceBody453_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_0 sourceBody453_87

def sourceBody453_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_0 sourceBody453_88

def sourceBody453_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_0 sourceBody453_89

def sourceBody453_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_0 sourceBody453_90

def sourceBody453_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_28 sourceBody453_91

def sourceBody453_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_0 sourceBody453_92

def sourceBody453_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_27 sourceBody453_93

def sourceBody453_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_9 sourceBody453_94

def sourceBody453_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_0 sourceBody453_95

def sourceBody453_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_0 sourceBody453_96

def sourceBody453_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_0 sourceBody453_97

def sourceBody453_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody453_0 sourceBody453_98

def source453 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (453, 4, sourceBody453_99)
end InitECandidate.Proofs.WordStages
