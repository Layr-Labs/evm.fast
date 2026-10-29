import InitECandidate.Proofs.WordStages.Source525
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody541_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 90#64)

def sourceBody541_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody541_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody541_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody541_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 14 (Flapjack.WordRegImm.reg 4) sourceBody541_2 sourceBody541_3

def sourceBody541_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody541_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_4 sourceBody541_5

def sourceBody541_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody541_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody541_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody541_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody541_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 18) sourceBody541_9 sourceBody541_10

def sourceBody541_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_11 sourceBody541_5

def sourceBody541_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody541_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 10])

def sourceBody541_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody541_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 8) sourceBody541_15 sourceBody541_13

def sourceBody541_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_16 sourceBody541_5

def sourceBody541_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody541_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 145#64],
      Flapjack.WordLangExpHOL.const 255#64])

def sourceBody541_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody541_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody541_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_20 sourceBody541_21

def sourceBody541_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_19 sourceBody541_22

def sourceBody541_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody541_23 sourceBody541_21

def sourceBody541_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_24 sourceBody541_5

def sourceBody541_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_25 sourceBody541_21

def sourceBody541_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_18 sourceBody541_26

def sourceBody541_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_17 sourceBody541_27

def sourceBody541_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_14 sourceBody541_28

def sourceBody541_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_13 sourceBody541_29

def sourceBody541_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_12 sourceBody541_30

def sourceBody541_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_8 sourceBody541_31

def sourceBody541_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_7 sourceBody541_32

def sourceBody541_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_6 sourceBody541_33

def sourceBody541_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_1 sourceBody541_34

def sourceBody541_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_0 sourceBody541_35

def sourceBody541_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody541_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 6)

def sourceBody541_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_38 sourceBody541_21

def sourceBody541_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_39 sourceBody541_21

def sourceBody541_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_37 sourceBody541_40

def sourceBody541_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_21 sourceBody541_41

def sourceBody541_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody541_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody541_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_43 sourceBody541_44

def sourceBody541_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_42 sourceBody541_45

def sourceBody541_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_36 sourceBody541_46

def sourceBody541_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody541_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_48 sourceBody541_22

def sourceBody541_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody541_47 sourceBody541_49

def source541 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (541, 2, sourceBody541_50)
end InitECandidate.Proofs.WordStages
