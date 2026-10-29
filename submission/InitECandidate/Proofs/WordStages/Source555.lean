import InitECandidate.Proofs.WordStages.Source539
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody555_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody555_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody555_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody555_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody555_0, 555, 2)) (some 470) ([16]) (some (16, sourceBody555_2, 555, 3))

def sourceBody555_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody555_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_3 sourceBody555_4

def sourceBody555_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_5 sourceBody555_0

def sourceBody555_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_1 sourceBody555_6

def sourceBody555_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_0 sourceBody555_7

def sourceBody555_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_0 sourceBody555_8

def sourceBody555_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.load
                (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                  [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                      [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                          (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                          (Flapjack.WordLangExpHOL.const 1#64)],
                    Flapjack.WordLangExpHOL.const 256#64]),
              Flapjack.WordLangExpHOL.const 112#64]),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody555_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody555_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody555_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 4, 14, 10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody555_0, 555, 4)) (some 467) ([20]) (some (20, sourceBody555_12, 555, 5))

def sourceBody555_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_13 sourceBody555_4

def sourceBody555_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_14 sourceBody555_0

def sourceBody555_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_11 sourceBody555_15

def sourceBody555_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody555_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody555_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody555_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody555_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody555_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody555_0, 555, 6)) (some 476) ([2, 12, 8, 18]) (some (2, sourceBody555_21, 555, 7))

def sourceBody555_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_22 sourceBody555_4

def sourceBody555_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_23 sourceBody555_0

def sourceBody555_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_20 sourceBody555_24

def sourceBody555_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_19 sourceBody555_25

def sourceBody555_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_18 sourceBody555_26

def sourceBody555_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_17 sourceBody555_27

def sourceBody555_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_0 sourceBody555_28

def sourceBody555_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_0 sourceBody555_29

def sourceBody555_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody555_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody555_0, 555, 8)) (some 490) ([2]) (some (2, sourceBody555_21, 555, 9))

def sourceBody555_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_32 sourceBody555_4

def sourceBody555_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_33 sourceBody555_0

def sourceBody555_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_31 sourceBody555_34

def sourceBody555_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_0 sourceBody555_35

def sourceBody555_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_0 sourceBody555_36

def sourceBody555_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_30 sourceBody555_37

def sourceBody555_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody555_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody555_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_40 sourceBody555_0

def sourceBody555_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_39 sourceBody555_41

def sourceBody555_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_38 sourceBody555_42

def sourceBody555_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_16 sourceBody555_43

def sourceBody555_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_0 sourceBody555_44

def sourceBody555_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_0 sourceBody555_45

def sourceBody555_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_0 sourceBody555_46

def sourceBody555_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_0 sourceBody555_47

def sourceBody555_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_0 sourceBody555_48

def sourceBody555_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_0 sourceBody555_49

def sourceBody555_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_0 sourceBody555_50

def sourceBody555_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_0 sourceBody555_51

def sourceBody555_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_10 sourceBody555_52

def sourceBody555_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_0 sourceBody555_53

def sourceBody555_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody555_9 sourceBody555_54

def source555 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (555, 1, sourceBody555_55)
end InitECandidate.Proofs.WordStages
