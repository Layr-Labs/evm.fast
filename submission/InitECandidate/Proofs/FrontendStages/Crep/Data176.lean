import InitECandidate.Proofs.FrontendStages.Crep.Translate160
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody176_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody176_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 64#64]

def crepBody176_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "merkleize_progressive"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 4]

def crepBody176_3 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody176_2

def crepBody176_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memzero" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 32#64]

def crepBody176_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody176_4

def crepBody176_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 5,
      Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 3#64)])
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 5,
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 3#64)]),
      Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.const 1#64)
        (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 7#64])])

def crepBody176_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 7)

def crepBody176_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody176_9 : CrepProg (BitVec 64) :=
.seq crepBody176_7 crepBody176_8

def crepBody176_10 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]) crepBody176_9

def crepBody176_11 : CrepProg (BitVec 64) :=
.seq crepBody176_6 crepBody176_10

def crepBody176_12 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 1)) crepBody176_11

def crepBody176_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "sha256_pair"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 2]

def crepBody176_14 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody176_13

def crepBody176_15 : CrepProg (BitVec 64) :=
.seq crepBody176_12 crepBody176_14

def crepBody176_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody176_17 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody176_16

def crepBody176_18 : CrepProg (BitVec 64) :=
.seq crepBody176_15 crepBody176_17

def crepBody176_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody176_20 : CrepProg (BitVec 64) :=
.seq crepBody176_18 crepBody176_19

def crepBody176_21 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody176_20

def crepBody176_22 : CrepProg (BitVec 64) :=
.seq crepBody176_5 crepBody176_21

def crepBody176_23 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]) crepBody176_22

def crepBody176_24 : CrepProg (BitVec 64) :=
.seq crepBody176_3 crepBody176_23

def crepBody176_25 : CrepProg (BitVec 64) :=
.seq crepBody176_1 crepBody176_24

def crepBody176_26 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody176_25

def crepBody176_27 : CrepProg (BitVec 64) :=
.seq crepBody176_0 crepBody176_26

def crepBody176_28 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody176_27

def data176 : CrepProg (BitVec 64) := crepBody176_28
def output176 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 116#8, 114#8, 95#8, 112#8, 99#8, 111#8, 110#8, 116#8, 97#8, 105#8, 110#8, 101#8, 114#8], [0, 1, 2], crepProgToHOL data176)
end InitECandidate.Proofs.FrontendStages.Crep
