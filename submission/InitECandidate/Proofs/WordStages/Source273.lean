import InitECandidate.Proofs.WordStages.Source257
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody273_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody273_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody273_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody273_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody273_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 8, 16, 12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody273_0, 273, 2)) (some 161) ([20, 6]) (some (20, sourceBody273_3, 273, 3))

def sourceBody273_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody273_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_4 sourceBody273_5

def sourceBody273_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_6 sourceBody273_0

def sourceBody273_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_2 sourceBody273_7

def sourceBody273_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_1 sourceBody273_8

def sourceBody273_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody273_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody273_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody273_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody273_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 14) sourceBody273_12 sourceBody273_13

def sourceBody273_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_14 sourceBody273_5

def sourceBody273_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody273_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody273_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 20)

def sourceBody273_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_18 sourceBody273_0

def sourceBody273_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_19 sourceBody273_0

def sourceBody273_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_17 sourceBody273_20

def sourceBody273_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_0 sourceBody273_21

def sourceBody273_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody273_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_23 sourceBody273_3

def sourceBody273_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_22 sourceBody273_24

def sourceBody273_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody273_25 sourceBody273_0

def sourceBody273_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_26 sourceBody273_5

def sourceBody273_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_27 sourceBody273_0

def sourceBody273_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_16 sourceBody273_28

def sourceBody273_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_15 sourceBody273_29

def sourceBody273_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_11 sourceBody273_30

def sourceBody273_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_10 sourceBody273_31

def sourceBody273_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody273_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody273_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20, 6]

def sourceBody273_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_35 sourceBody273_0

def sourceBody273_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_34 sourceBody273_36

def sourceBody273_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_33 sourceBody273_37

def sourceBody273_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_32 sourceBody273_38

def sourceBody273_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_9 sourceBody273_39

def sourceBody273_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_0 sourceBody273_40

def sourceBody273_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_0 sourceBody273_41

def sourceBody273_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_0 sourceBody273_42

def sourceBody273_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_0 sourceBody273_43

def sourceBody273_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_0 sourceBody273_44

def sourceBody273_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_0 sourceBody273_45

def sourceBody273_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_0 sourceBody273_46

def sourceBody273_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody273_0 sourceBody273_47

def source273 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (273, 3, sourceBody273_48)
end InitECandidate.Proofs.WordStages
