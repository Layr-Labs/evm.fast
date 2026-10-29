import InitECandidate.Proofs.WordStages.Source523
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody539_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody539_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody539_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody539_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody539_0, 539, 2)) (some 470) ([10]) (some (10, sourceBody539_2, 539, 3))

def sourceBody539_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody539_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_3 sourceBody539_4

def sourceBody539_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_5 sourceBody539_0

def sourceBody539_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_1 sourceBody539_6

def sourceBody539_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_0 sourceBody539_7

def sourceBody539_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_0 sourceBody539_8

def sourceBody539_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody539_11 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody539_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody539_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody539_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 4) sourceBody539_12 sourceBody539_13

def sourceBody539_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_14 sourceBody539_4

def sourceBody539_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody539_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody539_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 6)

def sourceBody539_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_18 sourceBody539_0

def sourceBody539_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_19 sourceBody539_0

def sourceBody539_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_17 sourceBody539_20

def sourceBody539_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_0 sourceBody539_21

def sourceBody539_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody539_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody539_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_23 sourceBody539_24

def sourceBody539_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_22 sourceBody539_25

def sourceBody539_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody539_26 sourceBody539_0

def sourceBody539_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_27 sourceBody539_4

def sourceBody539_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_28 sourceBody539_0

def sourceBody539_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_16 sourceBody539_29

def sourceBody539_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_15 sourceBody539_30

def sourceBody539_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_11 sourceBody539_31

def sourceBody539_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_10 sourceBody539_32

def sourceBody539_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_9 sourceBody539_33

def sourceBody539_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody539_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody539_0, 539, 4)) (some 538) ([10, 4]) (some (10, sourceBody539_2, 539, 5))

def sourceBody539_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_36 sourceBody539_4

def sourceBody539_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_37 sourceBody539_0

def sourceBody539_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_35 sourceBody539_38

def sourceBody539_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_13 sourceBody539_39

def sourceBody539_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_0 sourceBody539_40

def sourceBody539_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_0 sourceBody539_41

def sourceBody539_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_34 sourceBody539_42

def sourceBody539_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody539_0, 539, 6)) (some 490) ([10]) (some (10, sourceBody539_2, 539, 7))

def sourceBody539_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_44 sourceBody539_4

def sourceBody539_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_45 sourceBody539_0

def sourceBody539_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_12 sourceBody539_46

def sourceBody539_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_0 sourceBody539_47

def sourceBody539_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_0 sourceBody539_48

def sourceBody539_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_43 sourceBody539_49

def sourceBody539_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody539_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody539_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_52 sourceBody539_0

def sourceBody539_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_51 sourceBody539_53

def sourceBody539_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody539_50 sourceBody539_54

def source539 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (539, 2, sourceBody539_55)
end InitECandidate.Proofs.WordStages
