import InitECandidate.Proofs.WordStages.Source676
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody692_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody692_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody692_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 2)

def sourceBody692_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody692_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody692_0, 692, 2)) (some 679) ([14, 22]) (some (14, sourceBody692_3, 692, 3))

def sourceBody692_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody692_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_4 sourceBody692_5

def sourceBody692_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_6 sourceBody692_0

def sourceBody692_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_2 sourceBody692_7

def sourceBody692_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_1 sourceBody692_8

def sourceBody692_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_0 sourceBody692_9

def sourceBody692_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_0 sourceBody692_10

def sourceBody692_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody692_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
    (Flapjack.WordLangExpHOL.const 6#64))

def sourceBody692_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody692_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody692_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody692_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 16) sourceBody692_16 sourceBody692_14

def sourceBody692_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_17 sourceBody692_5

def sourceBody692_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody692_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody692_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 22)

def sourceBody692_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_21 sourceBody692_0

def sourceBody692_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_22 sourceBody692_0

def sourceBody692_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_20 sourceBody692_23

def sourceBody692_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_0 sourceBody692_24

def sourceBody692_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody692_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody692_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 16) sourceBody692_16 sourceBody692_14

def sourceBody692_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_28 sourceBody692_5

def sourceBody692_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody692_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody692_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody692_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody692_0, 692, 4)) (some 669) ([10, 16]) (some (10, sourceBody692_32, 692, 5))

def sourceBody692_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_33 sourceBody692_5

def sourceBody692_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_34 sourceBody692_0

def sourceBody692_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_31 sourceBody692_35

def sourceBody692_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_30 sourceBody692_36

def sourceBody692_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_0 sourceBody692_37

def sourceBody692_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_0 sourceBody692_38

def sourceBody692_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody692_39 sourceBody692_0

def sourceBody692_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_40 sourceBody692_5

def sourceBody692_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_41 sourceBody692_0

def sourceBody692_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_19 sourceBody692_42

def sourceBody692_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_29 sourceBody692_43

def sourceBody692_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_27 sourceBody692_44

def sourceBody692_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_26 sourceBody692_45

def sourceBody692_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_25 sourceBody692_46

def sourceBody692_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
        (Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 6,
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 14)
                  (Flapjack.WordLangExpHOL.const 6#64))
                (Flapjack.WordLangExpHOL.const 3#64)]))
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
          [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 63#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody692_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody692_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody692_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody692_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 12) sourceBody692_27 sourceBody692_51

def sourceBody692_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_52 sourceBody692_5

def sourceBody692_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody692_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody692_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody692_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody692_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody692_0, 692, 6)) (some 668) ([16, 12, 20]) (some (16, sourceBody692_57, 692, 7))

def sourceBody692_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_58 sourceBody692_5

def sourceBody692_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_59 sourceBody692_0

def sourceBody692_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_56 sourceBody692_60

def sourceBody692_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_55 sourceBody692_61

def sourceBody692_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_31 sourceBody692_62

def sourceBody692_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_0 sourceBody692_63

def sourceBody692_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_0 sourceBody692_64

def sourceBody692_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody692_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_66 sourceBody692_0

def sourceBody692_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_67 sourceBody692_0

def sourceBody692_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_65 sourceBody692_68

def sourceBody692_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody692_69 sourceBody692_0

def sourceBody692_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_70 sourceBody692_5

def sourceBody692_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_71 sourceBody692_0

def sourceBody692_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_54 sourceBody692_72

def sourceBody692_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_53 sourceBody692_73

def sourceBody692_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_50 sourceBody692_74

def sourceBody692_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_49 sourceBody692_75

def sourceBody692_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_48 sourceBody692_76

def sourceBody692_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_0 sourceBody692_77

def sourceBody692_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_47 sourceBody692_78

def sourceBody692_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody692_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_79 sourceBody692_80

def sourceBody692_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody692_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody692_81 sourceBody692_82

def sourceBody692_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_83 sourceBody692_5

def sourceBody692_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_84 sourceBody692_0

def sourceBody692_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_19 sourceBody692_85

def sourceBody692_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_18 sourceBody692_86

def sourceBody692_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_15 sourceBody692_87

def sourceBody692_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_14 sourceBody692_88

def sourceBody692_90 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody692_89 (Flapjack.Spt.ls PUnit.unit)

def sourceBody692_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_90 sourceBody692_5

def sourceBody692_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_5 sourceBody692_91

def sourceBody692_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody692_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody692_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_94 sourceBody692_0

def sourceBody692_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_93 sourceBody692_95

def sourceBody692_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_92 sourceBody692_96

def sourceBody692_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_13 sourceBody692_97

def sourceBody692_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_0 sourceBody692_98

def sourceBody692_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_12 sourceBody692_99

def sourceBody692_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_0 sourceBody692_100

def sourceBody692_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody692_11 sourceBody692_101

def source692 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (692, 5, sourceBody692_102)
end InitECandidate.Proofs.WordStages
