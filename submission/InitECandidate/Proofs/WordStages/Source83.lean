import InitECandidate.Proofs.WordStages.Source67
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody83_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody83_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def sourceBody83_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody83_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody83_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody83_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def sourceBody83_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody83_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def sourceBody83_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 10])

def sourceBody83_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody83_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody83_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody83_9 sourceBody83_10

def sourceBody83_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody83_8 sourceBody83_11

def sourceBody83_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody83_7 sourceBody83_12

def sourceBody83_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody83_6 sourceBody83_13

def sourceBody83_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody83_5 sourceBody83_14

def sourceBody83_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody83_4 sourceBody83_15

def sourceBody83_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody83_3 sourceBody83_16

def sourceBody83_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody83_2 sourceBody83_17

def sourceBody83_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody83_1 sourceBody83_18

def sourceBody83_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody83_0 sourceBody83_19

def source83 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (83, 2, sourceBody83_20)
end InitECandidate.Proofs.WordStages
