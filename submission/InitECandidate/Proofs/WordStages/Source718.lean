import InitECandidate.Proofs.WordStages.Source702
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody718_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody718_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody718_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 6)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody718_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 8)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody718_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 63#64)])

def sourceBody718_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 12)
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody718_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24, 14, 20, 18, 22, 16]

def sourceBody718_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody718_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody718_6 sourceBody718_7

def sourceBody718_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody718_5 sourceBody718_8

def sourceBody718_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody718_4 sourceBody718_9

def sourceBody718_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody718_3 sourceBody718_10

def sourceBody718_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody718_2 sourceBody718_11

def sourceBody718_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody718_1 sourceBody718_12

def sourceBody718_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody718_0 sourceBody718_13

def source718 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (718, 7, sourceBody718_14)
end InitECandidate.Proofs.WordStages
