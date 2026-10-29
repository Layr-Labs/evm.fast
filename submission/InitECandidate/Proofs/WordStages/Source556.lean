import InitECandidate.Proofs.WordStages.Source540
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody556_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody556_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody556_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody556_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody556_0, 556, 2)) (some 470) ([16]) (some (16, sourceBody556_2, 556, 3))

def sourceBody556_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody556_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_3 sourceBody556_4

def sourceBody556_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_5 sourceBody556_0

def sourceBody556_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_1 sourceBody556_6

def sourceBody556_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_0 sourceBody556_7

def sourceBody556_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_0 sourceBody556_8

def sourceBody556_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
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
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody556_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody556_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 16, 4, 14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody556_0, 556, 4)) (some 467) ([10]) (some (10, sourceBody556_11, 556, 5))

def sourceBody556_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_12 sourceBody556_4

def sourceBody556_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_13 sourceBody556_0

def sourceBody556_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_10 sourceBody556_14

def sourceBody556_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody556_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody556_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody556_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody556_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody556_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody556_0, 556, 6)) (some 476) ([18, 2, 12, 8]) (some (18, sourceBody556_20, 556, 7))

def sourceBody556_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_21 sourceBody556_4

def sourceBody556_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_22 sourceBody556_0

def sourceBody556_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_19 sourceBody556_23

def sourceBody556_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_18 sourceBody556_24

def sourceBody556_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_17 sourceBody556_25

def sourceBody556_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_16 sourceBody556_26

def sourceBody556_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_0 sourceBody556_27

def sourceBody556_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_0 sourceBody556_28

def sourceBody556_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody556_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody556_0, 556, 8)) (some 490) ([18]) (some (18, sourceBody556_20, 556, 9))

def sourceBody556_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_31 sourceBody556_4

def sourceBody556_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_32 sourceBody556_0

def sourceBody556_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_30 sourceBody556_33

def sourceBody556_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_0 sourceBody556_34

def sourceBody556_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_0 sourceBody556_35

def sourceBody556_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_29 sourceBody556_36

def sourceBody556_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody556_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody556_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_39 sourceBody556_0

def sourceBody556_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_38 sourceBody556_40

def sourceBody556_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_37 sourceBody556_41

def sourceBody556_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_15 sourceBody556_42

def sourceBody556_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_0 sourceBody556_43

def sourceBody556_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_0 sourceBody556_44

def sourceBody556_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_0 sourceBody556_45

def sourceBody556_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_0 sourceBody556_46

def sourceBody556_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_0 sourceBody556_47

def sourceBody556_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_0 sourceBody556_48

def sourceBody556_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_0 sourceBody556_49

def sourceBody556_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_0 sourceBody556_50

def sourceBody556_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody556_9 sourceBody556_51

def source556 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (556, 1, sourceBody556_52)
end InitECandidate.Proofs.WordStages
