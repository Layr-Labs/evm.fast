import InitECandidate.Proofs.WordStages.Source501
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody517_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody517_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody517_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 16, 4, 14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody517_0, 517, 2)) (some 475) ([]) (some (10, sourceBody517_1, 517, 3))

def sourceBody517_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody517_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_2 sourceBody517_3

def sourceBody517_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_4 sourceBody517_0

def sourceBody517_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody517_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody517_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody517_0, 517, 4)) (some 470) ([18]) (some (18, sourceBody517_7, 517, 5))

def sourceBody517_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_8 sourceBody517_3

def sourceBody517_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_9 sourceBody517_0

def sourceBody517_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_6 sourceBody517_10

def sourceBody517_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_0 sourceBody517_11

def sourceBody517_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_0 sourceBody517_12

def sourceBody517_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 18446744073709551615#64])

def sourceBody517_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 18446744073709551615#64])

def sourceBody517_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 18446744073709551615#64])

def sourceBody517_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 18446744073709551615#64])

def sourceBody517_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody517_0, 517, 6)) (some 476) ([18, 2, 12, 8]) (some (18, sourceBody517_7, 517, 7))

def sourceBody517_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_18 sourceBody517_3

def sourceBody517_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_19 sourceBody517_0

def sourceBody517_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_17 sourceBody517_20

def sourceBody517_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_16 sourceBody517_21

def sourceBody517_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_15 sourceBody517_22

def sourceBody517_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_14 sourceBody517_23

def sourceBody517_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_0 sourceBody517_24

def sourceBody517_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_0 sourceBody517_25

def sourceBody517_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_13 sourceBody517_26

def sourceBody517_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody517_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody517_0, 517, 8)) (some 490) ([18]) (some (18, sourceBody517_7, 517, 9))

def sourceBody517_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_29 sourceBody517_3

def sourceBody517_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_30 sourceBody517_0

def sourceBody517_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_28 sourceBody517_31

def sourceBody517_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_0 sourceBody517_32

def sourceBody517_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_0 sourceBody517_33

def sourceBody517_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_27 sourceBody517_34

def sourceBody517_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody517_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody517_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_37 sourceBody517_0

def sourceBody517_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_36 sourceBody517_38

def sourceBody517_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_35 sourceBody517_39

def sourceBody517_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_5 sourceBody517_40

def sourceBody517_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_0 sourceBody517_41

def sourceBody517_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_0 sourceBody517_42

def sourceBody517_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_0 sourceBody517_43

def sourceBody517_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_0 sourceBody517_44

def sourceBody517_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_0 sourceBody517_45

def sourceBody517_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_0 sourceBody517_46

def sourceBody517_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_0 sourceBody517_47

def sourceBody517_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody517_0 sourceBody517_48

def source517 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (517, 1, sourceBody517_49)
end InitECandidate.Proofs.WordStages
