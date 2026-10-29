import InitECandidate.Proofs.WordStages.Source68
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody84_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody84_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 71777214294589695#64])
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
        [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
            (Flapjack.WordLangExpHOL.const 8#64),
          Flapjack.WordLangExpHOL.const 71777214294589695#64]])

def sourceBody84_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody84_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody84_2 sourceBody84_0

def sourceBody84_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody84_3 sourceBody84_0

def sourceBody84_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody84_1 sourceBody84_4

def sourceBody84_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody84_0 sourceBody84_5

def sourceBody84_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 281470681808895#64])
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
        [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
            (Flapjack.WordLangExpHOL.const 16#64),
          Flapjack.WordLangExpHOL.const 281470681808895#64]])

def sourceBody84_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody84_7 sourceBody84_4

def sourceBody84_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody84_0 sourceBody84_8

def sourceBody84_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody84_6 sourceBody84_9

def sourceBody84_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
        (Flapjack.WordLangExpHOL.const 32#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
        (Flapjack.WordLangExpHOL.const 32#64)])

def sourceBody84_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody84_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody84_12 sourceBody84_0

def sourceBody84_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody84_11 sourceBody84_13

def sourceBody84_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody84_10 sourceBody84_14

def source84 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (84, 2, sourceBody84_15)
end InitECandidate.Proofs.WordStages
