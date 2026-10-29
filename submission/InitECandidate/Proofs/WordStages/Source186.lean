import InitECandidate.Proofs.WordStages.Source170
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody186_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody186_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody186_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody186_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody186_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody186_0, 186, 2)) (some 185) ([8, 18]) (some (8, sourceBody186_3, 186, 3))

def sourceBody186_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody186_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_4 sourceBody186_5

def sourceBody186_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_6 sourceBody186_0

def sourceBody186_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_2 sourceBody186_7

def sourceBody186_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_1 sourceBody186_8

def sourceBody186_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody186_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody186_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody186_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody186_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 14) sourceBody186_12 sourceBody186_13

def sourceBody186_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_14 sourceBody186_5

def sourceBody186_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody186_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody186_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8, 18]

def sourceBody186_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_18 sourceBody186_0

def sourceBody186_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_13 sourceBody186_19

def sourceBody186_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_17 sourceBody186_20

def sourceBody186_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody186_21 sourceBody186_0

def sourceBody186_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_22 sourceBody186_5

def sourceBody186_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_23 sourceBody186_0

def sourceBody186_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_16 sourceBody186_24

def sourceBody186_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_15 sourceBody186_25

def sourceBody186_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_11 sourceBody186_26

def sourceBody186_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_10 sourceBody186_27

def sourceBody186_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody186_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody186_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody186_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 22)

def sourceBody186_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody186_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 12 12 6 16))

def sourceBody186_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 12])

def sourceBody186_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody186_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody186_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody186_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody186_0, 186, 4)) (some 79) ([24, 10, 20]) (some (6, sourceBody186_38, 186, 5))

def sourceBody186_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_39 sourceBody186_5

def sourceBody186_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_40 sourceBody186_0

def sourceBody186_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_37 sourceBody186_41

def sourceBody186_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_36 sourceBody186_42

def sourceBody186_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_35 sourceBody186_43

def sourceBody186_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_34 sourceBody186_44

def sourceBody186_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_33 sourceBody186_45

def sourceBody186_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_32 sourceBody186_46

def sourceBody186_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody186_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody186_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody186_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody186_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 12) sourceBody186_50 sourceBody186_51

def sourceBody186_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_52 sourceBody186_5

def sourceBody186_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody186_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody186_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6, 16]

def sourceBody186_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_56 sourceBody186_0

def sourceBody186_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_51 sourceBody186_57

def sourceBody186_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_55 sourceBody186_58

def sourceBody186_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody186_59 sourceBody186_0

def sourceBody186_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_60 sourceBody186_5

def sourceBody186_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_61 sourceBody186_0

def sourceBody186_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_54 sourceBody186_62

def sourceBody186_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_53 sourceBody186_63

def sourceBody186_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_49 sourceBody186_64

def sourceBody186_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_48 sourceBody186_65

def sourceBody186_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody186_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]),
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
          (Flapjack.WordLangExpHOL.const 5#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody186_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_68 sourceBody186_57

def sourceBody186_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_67 sourceBody186_69

def sourceBody186_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_66 sourceBody186_70

def sourceBody186_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_47 sourceBody186_71

def sourceBody186_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_0 sourceBody186_72

def sourceBody186_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_0 sourceBody186_73

def sourceBody186_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_31 sourceBody186_74

def sourceBody186_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_0 sourceBody186_75

def sourceBody186_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_30 sourceBody186_76

def sourceBody186_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_0 sourceBody186_77

def sourceBody186_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_29 sourceBody186_78

def sourceBody186_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_0 sourceBody186_79

def sourceBody186_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_28 sourceBody186_80

def sourceBody186_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_9 sourceBody186_81

def sourceBody186_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_0 sourceBody186_82

def sourceBody186_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody186_0 sourceBody186_83

def source186 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (186, 3, sourceBody186_84)
end InitECandidate.Proofs.WordStages
