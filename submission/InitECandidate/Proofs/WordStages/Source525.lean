import InitECandidate.Proofs.WordStages.Source509
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody525_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody525_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody525_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 16, 4, 14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody525_0, 525, 2)) (some 475) ([]) (some (10, sourceBody525_1, 525, 3))

def sourceBody525_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody525_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_2 sourceBody525_3

def sourceBody525_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_4 sourceBody525_0

def sourceBody525_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody525_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody525_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody525_0, 525, 4)) (some 470) ([18]) (some (18, sourceBody525_7, 525, 5))

def sourceBody525_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_8 sourceBody525_3

def sourceBody525_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_9 sourceBody525_0

def sourceBody525_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_6 sourceBody525_10

def sourceBody525_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_0 sourceBody525_11

def sourceBody525_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_0 sourceBody525_12

def sourceBody525_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody525_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody525_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody525_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody525_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody525_0, 525, 6)) (some 486) ([18, 2, 12, 8]) (some (18, sourceBody525_7, 525, 7))

def sourceBody525_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_18 sourceBody525_3

def sourceBody525_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_19 sourceBody525_0

def sourceBody525_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_17 sourceBody525_20

def sourceBody525_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_16 sourceBody525_21

def sourceBody525_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_15 sourceBody525_22

def sourceBody525_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_14 sourceBody525_23

def sourceBody525_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 10)

def sourceBody525_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody525_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody525_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody525_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 12) sourceBody525_27 sourceBody525_28

def sourceBody525_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_29 sourceBody525_3

def sourceBody525_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody525_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody525_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 18)

def sourceBody525_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_33 sourceBody525_0

def sourceBody525_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_34 sourceBody525_0

def sourceBody525_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_32 sourceBody525_35

def sourceBody525_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_0 sourceBody525_36

def sourceBody525_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_6 sourceBody525_7

def sourceBody525_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_37 sourceBody525_38

def sourceBody525_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody525_39 sourceBody525_0

def sourceBody525_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_40 sourceBody525_3

def sourceBody525_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_41 sourceBody525_0

def sourceBody525_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_31 sourceBody525_42

def sourceBody525_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_30 sourceBody525_43

def sourceBody525_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_26 sourceBody525_44

def sourceBody525_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_25 sourceBody525_45

def sourceBody525_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody525_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 6)

def sourceBody525_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody525_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 12

def sourceBody525_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_50 sourceBody525_0

def sourceBody525_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_49 sourceBody525_51

def sourceBody525_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_52 sourceBody525_0

def sourceBody525_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_48 sourceBody525_53

def sourceBody525_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_0 sourceBody525_54

def sourceBody525_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_47 sourceBody525_55

def sourceBody525_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_0 sourceBody525_56

def sourceBody525_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_46 sourceBody525_57

def sourceBody525_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody525_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody525_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_60 sourceBody525_0

def sourceBody525_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_59 sourceBody525_61

def sourceBody525_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_58 sourceBody525_62

def sourceBody525_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_24 sourceBody525_63

def sourceBody525_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_0 sourceBody525_64

def sourceBody525_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_0 sourceBody525_65

def sourceBody525_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_13 sourceBody525_66

def sourceBody525_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_5 sourceBody525_67

def sourceBody525_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_0 sourceBody525_68

def sourceBody525_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_0 sourceBody525_69

def sourceBody525_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_0 sourceBody525_70

def sourceBody525_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_0 sourceBody525_71

def sourceBody525_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_0 sourceBody525_72

def sourceBody525_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_0 sourceBody525_73

def sourceBody525_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_0 sourceBody525_74

def sourceBody525_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody525_0 sourceBody525_75

def source525 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (525, 1, sourceBody525_76)
end InitECandidate.Proofs.WordStages
