import InitECandidate.Proofs.WordStages.Source396
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody412_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody412_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody412_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody412_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody412_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody412_0, 412, 2)) (some 392) ([8, 14]) (some (8, sourceBody412_3, 412, 3))

def sourceBody412_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody412_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_4 sourceBody412_5

def sourceBody412_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_6 sourceBody412_0

def sourceBody412_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_2 sourceBody412_7

def sourceBody412_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_1 sourceBody412_8

def sourceBody412_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
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
        Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody412_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody412_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody412_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody412_0, 412, 4)) (some 186) ([10, 18]) (some (10, sourceBody412_12, 412, 5))

def sourceBody412_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_13 sourceBody412_5

def sourceBody412_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_14 sourceBody412_0

def sourceBody412_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_11 sourceBody412_15

def sourceBody412_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_10 sourceBody412_16

def sourceBody412_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody412_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody412_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody412_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody412_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 6) sourceBody412_20 sourceBody412_21

def sourceBody412_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_22 sourceBody412_5

def sourceBody412_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody412_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody412_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody412_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10, 18, 6, 12]

def sourceBody412_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_27 sourceBody412_0

def sourceBody412_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_26 sourceBody412_28

def sourceBody412_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_19 sourceBody412_29

def sourceBody412_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_21 sourceBody412_30

def sourceBody412_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_25 sourceBody412_31

def sourceBody412_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody412_32 sourceBody412_0

def sourceBody412_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_33 sourceBody412_5

def sourceBody412_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_34 sourceBody412_0

def sourceBody412_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_24 sourceBody412_35

def sourceBody412_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_23 sourceBody412_36

def sourceBody412_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_19 sourceBody412_37

def sourceBody412_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_18 sourceBody412_38

def sourceBody412_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 14))

def sourceBody412_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody412_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody412_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody412_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_43 sourceBody412_28

def sourceBody412_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_42 sourceBody412_44

def sourceBody412_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_41 sourceBody412_45

def sourceBody412_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_40 sourceBody412_46

def sourceBody412_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_39 sourceBody412_47

def sourceBody412_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_17 sourceBody412_48

def sourceBody412_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_0 sourceBody412_49

def sourceBody412_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_0 sourceBody412_50

def sourceBody412_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_0 sourceBody412_51

def sourceBody412_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_0 sourceBody412_52

def sourceBody412_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_9 sourceBody412_53

def sourceBody412_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_0 sourceBody412_54

def sourceBody412_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody412_0 sourceBody412_55

def source412 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (412, 3, sourceBody412_56)
end InitECandidate.Proofs.WordStages
