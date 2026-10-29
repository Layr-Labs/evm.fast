import InitECandidate.Proofs.WordStages.Source390
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody406_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody406_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 184#64]),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody406_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody406_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody406_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody406_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody406_0, 406, 2)) (some 192) ([12, 4, 10]) (some (12, sourceBody406_4, 406, 3))

def sourceBody406_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody406_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_5 sourceBody406_6

def sourceBody406_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_7 sourceBody406_0

def sourceBody406_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_3 sourceBody406_8

def sourceBody406_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_2 sourceBody406_9

def sourceBody406_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_1 sourceBody406_10

def sourceBody406_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_0 sourceBody406_11

def sourceBody406_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_0 sourceBody406_12

def sourceBody406_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 184#64]),
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody406_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody406_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody406_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody406_0, 406, 4)) (some 186) ([4, 10]) (some (4, sourceBody406_16, 406, 5))

def sourceBody406_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_17 sourceBody406_6

def sourceBody406_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_18 sourceBody406_0

def sourceBody406_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_15 sourceBody406_19

def sourceBody406_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_14 sourceBody406_20

def sourceBody406_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody406_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody406_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody406_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 8) sourceBody406_3 sourceBody406_24

def sourceBody406_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_25 sourceBody406_6

def sourceBody406_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody406_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 12)

def sourceBody406_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody406_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_29 sourceBody406_0

def sourceBody406_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_28 sourceBody406_30

def sourceBody406_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody406_31 sourceBody406_0

def sourceBody406_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_32 sourceBody406_6

def sourceBody406_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_33 sourceBody406_0

def sourceBody406_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_27 sourceBody406_34

def sourceBody406_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_26 sourceBody406_35

def sourceBody406_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_23 sourceBody406_36

def sourceBody406_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_22 sourceBody406_37

def sourceBody406_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody406_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody406_0, 406, 6)) (some 404) ([10]) (some (10, sourceBody406_39, 406, 7))

def sourceBody406_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_40 sourceBody406_6

def sourceBody406_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_41 sourceBody406_0

def sourceBody406_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_15 sourceBody406_42

def sourceBody406_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody406_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody406_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_45 sourceBody406_0

def sourceBody406_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_44 sourceBody406_46

def sourceBody406_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_43 sourceBody406_47

def sourceBody406_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_0 sourceBody406_48

def sourceBody406_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_0 sourceBody406_49

def sourceBody406_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_38 sourceBody406_50

def sourceBody406_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_21 sourceBody406_51

def sourceBody406_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_0 sourceBody406_52

def sourceBody406_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_0 sourceBody406_53

def sourceBody406_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_0 sourceBody406_54

def sourceBody406_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_0 sourceBody406_55

def sourceBody406_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody406_13 sourceBody406_56

def source406 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (406, 2, sourceBody406_57)
end InitECandidate.Proofs.WordStages
