import InitECandidate.Proofs.WordStages.Source822
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody838_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody838_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody838_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody838_0, 838, 2)) (some 69) ([]) (some (22, sourceBody838_1, 838, 3))

def sourceBody838_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody838_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_2 sourceBody838_3

def sourceBody838_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_4 sourceBody838_0

def sourceBody838_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody838_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody838_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody838_0, 838, 4)) (some 68) ([16]) (some (16, sourceBody838_7, 838, 5))

def sourceBody838_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_8 sourceBody838_3

def sourceBody838_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_9 sourceBody838_0

def sourceBody838_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_6 sourceBody838_10

def sourceBody838_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody838_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody838_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody838_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody838_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody838_0, 838, 6)) (some 158) ([28, 8, 20]) (some (28, sourceBody838_15, 838, 7))

def sourceBody838_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_16 sourceBody838_3

def sourceBody838_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_17 sourceBody838_0

def sourceBody838_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_14 sourceBody838_18

def sourceBody838_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_13 sourceBody838_19

def sourceBody838_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_12 sourceBody838_20

def sourceBody838_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_0 sourceBody838_21

def sourceBody838_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_0 sourceBody838_22

def sourceBody838_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody838_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 16)

def sourceBody838_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody838_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody838_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody838_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 20) sourceBody838_27 sourceBody838_28

def sourceBody838_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_29 sourceBody838_3

def sourceBody838_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody838_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 16])

def sourceBody838_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 28 (Flapjack.WordLangAddr.addr 28 0#64))

def sourceBody838_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody838_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody838_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_35 sourceBody838_0

def sourceBody838_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_34 sourceBody838_36

def sourceBody838_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_33 sourceBody838_37

def sourceBody838_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_32 sourceBody838_38

def sourceBody838_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
        [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
            (Flapjack.WordLangExpHOL.const 8#64),
          Flapjack.WordLangExpHOL.var 8],
      Flapjack.WordLangExpHOL.const 2047#64])

def sourceBody838_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 2047#64, Flapjack.WordLangExpHOL.var 20])

def sourceBody838_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 14)
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody838_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.const 1#64)
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.const 7#64,
        Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
          [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 7#64]]))

def sourceBody838_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 26])

def sourceBody838_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 24 (Flapjack.WordLangAddr.addr 24 0#64))

def sourceBody838_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 26])

def sourceBody838_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 12])

def sourceBody838_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 30 (Flapjack.WordLangAddr.addr 18 0#64))

def sourceBody838_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_48 sourceBody838_0

def sourceBody838_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_47 sourceBody838_49

def sourceBody838_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_46 sourceBody838_50

def sourceBody838_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_45 sourceBody838_51

def sourceBody838_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_44 sourceBody838_52

def sourceBody838_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody838_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody838_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_55 sourceBody838_0

def sourceBody838_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_56 sourceBody838_0

def sourceBody838_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_54 sourceBody838_57

def sourceBody838_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_0 sourceBody838_58

def sourceBody838_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_53 sourceBody838_59

def sourceBody838_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_43 sourceBody838_60

def sourceBody838_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_0 sourceBody838_61

def sourceBody838_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_42 sourceBody838_62

def sourceBody838_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_0 sourceBody838_63

def sourceBody838_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_41 sourceBody838_64

def sourceBody838_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_0 sourceBody838_65

def sourceBody838_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_40 sourceBody838_66

def sourceBody838_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_39 sourceBody838_67

def sourceBody838_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody838_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_68 sourceBody838_69

def sourceBody838_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody838_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody838_70 sourceBody838_71

def sourceBody838_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_72 sourceBody838_3

def sourceBody838_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_73 sourceBody838_0

def sourceBody838_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_31 sourceBody838_74

def sourceBody838_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_30 sourceBody838_75

def sourceBody838_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_26 sourceBody838_76

def sourceBody838_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_25 sourceBody838_77

def sourceBody838_79 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody838_78 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody838_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_79 sourceBody838_3

def sourceBody838_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_3 sourceBody838_80

def sourceBody838_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody838_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody838_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody838_0, 838, 8)) (some 70) ([8]) (some (8, sourceBody838_83, 838, 9))

def sourceBody838_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_84 sourceBody838_3

def sourceBody838_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_85 sourceBody838_0

def sourceBody838_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_82 sourceBody838_86

def sourceBody838_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_0 sourceBody838_87

def sourceBody838_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_0 sourceBody838_88

def sourceBody838_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_81 sourceBody838_89

def sourceBody838_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody838_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28]

def sourceBody838_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_92 sourceBody838_0

def sourceBody838_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_91 sourceBody838_93

def sourceBody838_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_90 sourceBody838_94

def sourceBody838_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_24 sourceBody838_95

def sourceBody838_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_0 sourceBody838_96

def sourceBody838_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_23 sourceBody838_97

def sourceBody838_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_11 sourceBody838_98

def sourceBody838_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_0 sourceBody838_99

def sourceBody838_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_0 sourceBody838_100

def sourceBody838_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_5 sourceBody838_101

def sourceBody838_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_0 sourceBody838_102

def sourceBody838_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody838_0 sourceBody838_103

def source838 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (838, 4, sourceBody838_104)
end InitECandidate.Proofs.WordStages
