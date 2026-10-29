import InitECandidate.Proofs.WordStages.Source181
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody197_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody197_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody197_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody197_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody197_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 8 (Flapjack.WordRegImm.reg 18) sourceBody197_2 sourceBody197_3

def sourceBody197_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody197_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_4 sourceBody197_5

def sourceBody197_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody197_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody197_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody197_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20, 8, 18]

def sourceBody197_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody197_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_10 sourceBody197_11

def sourceBody197_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_9 sourceBody197_12

def sourceBody197_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_3 sourceBody197_13

def sourceBody197_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_8 sourceBody197_14

def sourceBody197_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody197_15 sourceBody197_11

def sourceBody197_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_16 sourceBody197_5

def sourceBody197_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_17 sourceBody197_11

def sourceBody197_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_7 sourceBody197_18

def sourceBody197_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_6 sourceBody197_19

def sourceBody197_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_1 sourceBody197_20

def sourceBody197_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_0 sourceBody197_21

def sourceBody197_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]),
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody197_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody197_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody197_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 24 24 18 14))

def sourceBody197_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_26 sourceBody197_11

def sourceBody197_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_7 sourceBody197_27

def sourceBody197_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_25 sourceBody197_28

def sourceBody197_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]),
      Flapjack.WordLangExpHOL.var 24])

def sourceBody197_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]),
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 20)
          (Flapjack.WordLangExpHOL.const 5#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody197_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody197_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody197_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody197_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12, 22, 10]

def sourceBody197_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_35 sourceBody197_11

def sourceBody197_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_34 sourceBody197_36

def sourceBody197_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_33 sourceBody197_37

def sourceBody197_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_32 sourceBody197_38

def sourceBody197_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_31 sourceBody197_39

def sourceBody197_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_11 sourceBody197_40

def sourceBody197_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_30 sourceBody197_41

def sourceBody197_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_29 sourceBody197_42

def sourceBody197_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_24 sourceBody197_43

def sourceBody197_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_11 sourceBody197_44

def sourceBody197_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_23 sourceBody197_45

def sourceBody197_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_11 sourceBody197_46

def sourceBody197_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody197_22 sourceBody197_47

def source197 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (197, 3, sourceBody197_48)
end InitECandidate.Proofs.WordStages
