import InitECandidate.Proofs.WordStages.Source399
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody415_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody415_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody415_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody415_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody415_0, 415, 2)) (some 407) ([14]) (some (14, sourceBody415_2, 415, 3))

def sourceBody415_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody415_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_3 sourceBody415_4

def sourceBody415_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_5 sourceBody415_0

def sourceBody415_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_1 sourceBody415_6

def sourceBody415_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody415_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody415_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody415_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody415_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 12) sourceBody415_10 sourceBody415_11

def sourceBody415_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_12 sourceBody415_4

def sourceBody415_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody415_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody415_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody415_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_16 sourceBody415_0

def sourceBody415_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_15 sourceBody415_17

def sourceBody415_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody415_18 sourceBody415_0

def sourceBody415_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_19 sourceBody415_4

def sourceBody415_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_20 sourceBody415_0

def sourceBody415_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_14 sourceBody415_21

def sourceBody415_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_13 sourceBody415_22

def sourceBody415_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_9 sourceBody415_23

def sourceBody415_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_8 sourceBody415_24

def sourceBody415_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody415_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 136#64]))

def sourceBody415_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody415_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody415_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody415_0, 415, 4)) (some 79) ([6, 12, 10]) (some (6, sourceBody415_29, 415, 5))

def sourceBody415_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_30 sourceBody415_4

def sourceBody415_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_31 sourceBody415_0

def sourceBody415_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_28 sourceBody415_32

def sourceBody415_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_27 sourceBody415_33

def sourceBody415_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_26 sourceBody415_34

def sourceBody415_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody415_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody415_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody415_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 10) sourceBody415_38 sourceBody415_9

def sourceBody415_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_39 sourceBody415_4

def sourceBody415_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody415_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody415_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_42 sourceBody415_0

def sourceBody415_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_11 sourceBody415_43

def sourceBody415_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody415_44 sourceBody415_0

def sourceBody415_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_45 sourceBody415_4

def sourceBody415_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_46 sourceBody415_0

def sourceBody415_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_41 sourceBody415_47

def sourceBody415_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_40 sourceBody415_48

def sourceBody415_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_37 sourceBody415_49

def sourceBody415_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_36 sourceBody415_50

def sourceBody415_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody415_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody415_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody415_0, 415, 6)) (some 414) ([12]) (some (12, sourceBody415_53, 415, 7))

def sourceBody415_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_54 sourceBody415_4

def sourceBody415_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_55 sourceBody415_0

def sourceBody415_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_52 sourceBody415_56

def sourceBody415_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody415_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody415_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 16) sourceBody415_59 sourceBody415_37

def sourceBody415_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_60 sourceBody415_4

def sourceBody415_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody415_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody415_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_63 sourceBody415_0

def sourceBody415_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_9 sourceBody415_64

def sourceBody415_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody415_65 sourceBody415_0

def sourceBody415_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_66 sourceBody415_4

def sourceBody415_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_67 sourceBody415_0

def sourceBody415_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_62 sourceBody415_68

def sourceBody415_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_61 sourceBody415_69

def sourceBody415_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_58 sourceBody415_70

def sourceBody415_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_14 sourceBody415_71

def sourceBody415_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_38 sourceBody415_64

def sourceBody415_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_72 sourceBody415_73

def sourceBody415_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_57 sourceBody415_74

def sourceBody415_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_0 sourceBody415_75

def sourceBody415_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_0 sourceBody415_76

def sourceBody415_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_51 sourceBody415_77

def sourceBody415_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_35 sourceBody415_78

def sourceBody415_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_0 sourceBody415_79

def sourceBody415_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_0 sourceBody415_80

def sourceBody415_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_25 sourceBody415_81

def sourceBody415_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_7 sourceBody415_82

def sourceBody415_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_0 sourceBody415_83

def sourceBody415_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody415_0 sourceBody415_84

def source415 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (415, 2, sourceBody415_85)
end InitECandidate.Proofs.WordStages
