import InitECandidate.Proofs.WordStages.Source751
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody767_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody767_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody767_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody767_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody767_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody767_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody767_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody767_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody767_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody767_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody767_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody767_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody767_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 26)

def sourceBody767_13 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 705) ([0, 4, 16, 12, 24, 8, 20]) (none)

def sourceBody767_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_13 sourceBody767_0

def sourceBody767_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_12 sourceBody767_14

def sourceBody767_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_11 sourceBody767_15

def sourceBody767_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_10 sourceBody767_16

def sourceBody767_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_9 sourceBody767_17

def sourceBody767_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_8 sourceBody767_18

def sourceBody767_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_7 sourceBody767_19

def sourceBody767_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_6 sourceBody767_20

def sourceBody767_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_0 sourceBody767_21

def sourceBody767_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_5 sourceBody767_22

def sourceBody767_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_0 sourceBody767_23

def sourceBody767_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_4 sourceBody767_24

def sourceBody767_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_0 sourceBody767_25

def sourceBody767_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_3 sourceBody767_26

def sourceBody767_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_0 sourceBody767_27

def sourceBody767_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_2 sourceBody767_28

def sourceBody767_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_0 sourceBody767_29

def sourceBody767_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_1 sourceBody767_30

def sourceBody767_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody767_0 sourceBody767_31

def source767 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (767, 2, sourceBody767_32)
end InitECandidate.Proofs.WordStages
