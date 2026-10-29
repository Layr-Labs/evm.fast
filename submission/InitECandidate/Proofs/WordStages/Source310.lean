import InitECandidate.Proofs.WordStages.Source294
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody310_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody310_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody310_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody310_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody310_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 12) sourceBody310_2 sourceBody310_3

def sourceBody310_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody310_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_4 sourceBody310_5

def sourceBody310_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody310_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody310_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody310_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody310_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 152#64]))

def sourceBody310_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody310_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody310_8, 310, 2)) (some 158) ([14, 12, 16]) (some (14, sourceBody310_12, 310, 3))

def sourceBody310_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_13 sourceBody310_5

def sourceBody310_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_14 sourceBody310_8

def sourceBody310_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_11 sourceBody310_15

def sourceBody310_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_10 sourceBody310_16

def sourceBody310_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_9 sourceBody310_17

def sourceBody310_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_8 sourceBody310_18

def sourceBody310_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_8 sourceBody310_19

def sourceBody310_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody310_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody310_8, 310, 4)) (some 68) ([14]) (some (14, sourceBody310_12, 310, 5))

def sourceBody310_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_22 sourceBody310_5

def sourceBody310_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_23 sourceBody310_8

def sourceBody310_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_21 sourceBody310_24

def sourceBody310_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 152#64]))

def sourceBody310_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody310_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody310_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody310_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody310_8, 310, 6)) (some 288) ([12, 16, 8]) (some (12, sourceBody310_29, 310, 7))

def sourceBody310_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_30 sourceBody310_5

def sourceBody310_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_31 sourceBody310_8

def sourceBody310_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_28 sourceBody310_32

def sourceBody310_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_27 sourceBody310_33

def sourceBody310_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_26 sourceBody310_34

def sourceBody310_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_8 sourceBody310_35

def sourceBody310_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_8 sourceBody310_36

def sourceBody310_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody310_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody310_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14, 12]

def sourceBody310_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_40 sourceBody310_8

def sourceBody310_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_39 sourceBody310_41

def sourceBody310_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_38 sourceBody310_42

def sourceBody310_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_37 sourceBody310_43

def sourceBody310_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_25 sourceBody310_44

def sourceBody310_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_8 sourceBody310_45

def sourceBody310_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_8 sourceBody310_46

def sourceBody310_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_20 sourceBody310_47

def sourceBody310_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody310_48 sourceBody310_8

def sourceBody310_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_49 sourceBody310_5

def sourceBody310_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_50 sourceBody310_8

def sourceBody310_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_7 sourceBody310_51

def sourceBody310_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_6 sourceBody310_52

def sourceBody310_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_1 sourceBody310_53

def sourceBody310_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_0 sourceBody310_54

def sourceBody310_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody310_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody310_8, 310, 8)) (some 68) ([14]) (some (14, sourceBody310_12, 310, 9))

def sourceBody310_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_57 sourceBody310_5

def sourceBody310_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_58 sourceBody310_8

def sourceBody310_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_56 sourceBody310_59

def sourceBody310_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody310_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody310_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody310_8, 310, 10)) (some 288) ([12, 16, 8]) (some (12, sourceBody310_29, 310, 11))

def sourceBody310_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_63 sourceBody310_5

def sourceBody310_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_64 sourceBody310_8

def sourceBody310_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_28 sourceBody310_65

def sourceBody310_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_62 sourceBody310_66

def sourceBody310_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_61 sourceBody310_67

def sourceBody310_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_8 sourceBody310_68

def sourceBody310_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_8 sourceBody310_69

def sourceBody310_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody310_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_71 sourceBody310_41

def sourceBody310_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_38 sourceBody310_72

def sourceBody310_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_70 sourceBody310_73

def sourceBody310_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_60 sourceBody310_74

def sourceBody310_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_8 sourceBody310_75

def sourceBody310_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_8 sourceBody310_76

def sourceBody310_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody310_55 sourceBody310_77

def source310 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (310, 4, sourceBody310_78)
end InitECandidate.Proofs.WordStages
