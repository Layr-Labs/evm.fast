import InitECandidate.Proofs.WordStages.Source716
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody732_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody732_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 2))

def sourceBody732_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody732_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody732_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody732_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody732_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody732_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody732_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody732_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody732_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody732_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody732_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody732_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 32,
      Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 14,
      Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 26])

def sourceBody732_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody732_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody732_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody732_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 4) sourceBody732_15 sourceBody732_16

def sourceBody732_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody732_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_17 sourceBody732_18

def sourceBody732_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 34)

def sourceBody732_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody732_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody732_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_22 sourceBody732_0

def sourceBody732_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_21 sourceBody732_23

def sourceBody732_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody732_24 sourceBody732_0

def sourceBody732_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_25 sourceBody732_18

def sourceBody732_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_26 sourceBody732_0

def sourceBody732_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_20 sourceBody732_27

def sourceBody732_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_19 sourceBody732_28

def sourceBody732_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_14 sourceBody732_29

def sourceBody732_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_13 sourceBody732_30

def sourceBody732_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody732_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_32 sourceBody732_23

def sourceBody732_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_31 sourceBody732_33

def sourceBody732_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_12 sourceBody732_34

def sourceBody732_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_0 sourceBody732_35

def sourceBody732_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_11 sourceBody732_36

def sourceBody732_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_0 sourceBody732_37

def sourceBody732_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_10 sourceBody732_38

def sourceBody732_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_0 sourceBody732_39

def sourceBody732_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_9 sourceBody732_40

def sourceBody732_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_0 sourceBody732_41

def sourceBody732_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_8 sourceBody732_42

def sourceBody732_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_0 sourceBody732_43

def sourceBody732_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_7 sourceBody732_44

def sourceBody732_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_0 sourceBody732_45

def sourceBody732_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_6 sourceBody732_46

def sourceBody732_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_0 sourceBody732_47

def sourceBody732_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_5 sourceBody732_48

def sourceBody732_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_0 sourceBody732_49

def sourceBody732_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_4 sourceBody732_50

def sourceBody732_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_0 sourceBody732_51

def sourceBody732_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_3 sourceBody732_52

def sourceBody732_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_0 sourceBody732_53

def sourceBody732_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_2 sourceBody732_54

def sourceBody732_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_0 sourceBody732_55

def sourceBody732_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_1 sourceBody732_56

def sourceBody732_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody732_0 sourceBody732_57

def source732 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (732, 2, sourceBody732_58)
end InitECandidate.Proofs.WordStages
