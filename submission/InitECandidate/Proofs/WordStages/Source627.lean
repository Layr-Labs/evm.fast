import InitECandidate.Proofs.WordStages.Source611
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody627_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody627_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody627_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody627_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody627_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 16) sourceBody627_2 sourceBody627_3

def sourceBody627_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody627_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_4 sourceBody627_5

def sourceBody627_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody627_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 8])

def sourceBody627_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody627_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody627_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_9 sourceBody627_10

def sourceBody627_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_8 sourceBody627_11

def sourceBody627_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody627_12 sourceBody627_10

def sourceBody627_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_13 sourceBody627_5

def sourceBody627_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_14 sourceBody627_10

def sourceBody627_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_7 sourceBody627_15

def sourceBody627_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_6 sourceBody627_16

def sourceBody627_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_1 sourceBody627_17

def sourceBody627_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_0 sourceBody627_18

def sourceBody627_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody627_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 6],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 4294967295#64],
          Flapjack.WordLangExpHOL.var 8]])

def sourceBody627_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_21 sourceBody627_11

def sourceBody627_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody627_22 sourceBody627_10

def sourceBody627_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_23 sourceBody627_5

def sourceBody627_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_24 sourceBody627_10

def sourceBody627_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_7 sourceBody627_25

def sourceBody627_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_6 sourceBody627_26

def sourceBody627_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_20 sourceBody627_27

def sourceBody627_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_0 sourceBody627_28

def sourceBody627_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_19 sourceBody627_29

def sourceBody627_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 48#64)

def sourceBody627_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
        [Flapjack.WordLangExpHOL.var 4,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 4294967295#64]],
      Flapjack.WordLangExpHOL.var 8])

def sourceBody627_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_32 sourceBody627_11

def sourceBody627_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody627_33 sourceBody627_10

def sourceBody627_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_34 sourceBody627_5

def sourceBody627_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_35 sourceBody627_10

def sourceBody627_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_7 sourceBody627_36

def sourceBody627_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_6 sourceBody627_37

def sourceBody627_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_31 sourceBody627_38

def sourceBody627_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_0 sourceBody627_39

def sourceBody627_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_30 sourceBody627_40

def sourceBody627_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody627_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 8],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
        [Flapjack.WordLangExpHOL.var 6,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 4294967295#64]]])

def sourceBody627_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_43 sourceBody627_11

def sourceBody627_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody627_44 sourceBody627_10

def sourceBody627_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_45 sourceBody627_5

def sourceBody627_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_46 sourceBody627_10

def sourceBody627_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_7 sourceBody627_47

def sourceBody627_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_6 sourceBody627_48

def sourceBody627_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_42 sourceBody627_49

def sourceBody627_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_0 sourceBody627_50

def sourceBody627_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_41 sourceBody627_51

def sourceBody627_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
        [Flapjack.WordLangExpHOL.var 6,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 4294967295#64]]])

def sourceBody627_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_53 sourceBody627_11

def sourceBody627_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody627_52 sourceBody627_54

def source627 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (627, 5, sourceBody627_55)
end InitECandidate.Proofs.WordStages
