import InitECandidate.Proofs.WordStages.Source325
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody341_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody341_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody341_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody341_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody341_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 8, 16, 12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody341_0, 341, 2)) (some 161) ([20, 6]) (some (20, sourceBody341_3, 341, 3))

def sourceBody341_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody341_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_4 sourceBody341_5

def sourceBody341_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_6 sourceBody341_0

def sourceBody341_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_2 sourceBody341_7

def sourceBody341_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_1 sourceBody341_8

def sourceBody341_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody341_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody341_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody341_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody341_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 14) sourceBody341_12 sourceBody341_13

def sourceBody341_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_14 sourceBody341_5

def sourceBody341_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody341_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 18#64)

def sourceBody341_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 20)

def sourceBody341_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_18 sourceBody341_0

def sourceBody341_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_19 sourceBody341_0

def sourceBody341_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_17 sourceBody341_20

def sourceBody341_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_0 sourceBody341_21

def sourceBody341_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody341_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_23 sourceBody341_3

def sourceBody341_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_22 sourceBody341_24

def sourceBody341_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody341_25 sourceBody341_0

def sourceBody341_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_26 sourceBody341_5

def sourceBody341_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_27 sourceBody341_0

def sourceBody341_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_16 sourceBody341_28

def sourceBody341_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_15 sourceBody341_29

def sourceBody341_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_11 sourceBody341_30

def sourceBody341_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_10 sourceBody341_31

def sourceBody341_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody341_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody341_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20, 6]

def sourceBody341_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_35 sourceBody341_0

def sourceBody341_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_34 sourceBody341_36

def sourceBody341_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_33 sourceBody341_37

def sourceBody341_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_32 sourceBody341_38

def sourceBody341_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_9 sourceBody341_39

def sourceBody341_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_0 sourceBody341_40

def sourceBody341_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_0 sourceBody341_41

def sourceBody341_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_0 sourceBody341_42

def sourceBody341_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_0 sourceBody341_43

def sourceBody341_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_0 sourceBody341_44

def sourceBody341_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_0 sourceBody341_45

def sourceBody341_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_0 sourceBody341_46

def sourceBody341_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody341_0 sourceBody341_47

def source341 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (341, 3, sourceBody341_48)
end InitECandidate.Proofs.WordStages
