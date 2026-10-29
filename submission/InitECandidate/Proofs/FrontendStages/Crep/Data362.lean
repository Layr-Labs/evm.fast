import InitECandidate.Proofs.FrontendStages.Crep.Translate346
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody362_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "sk_make" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody362_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody362_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "jdel"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.var 6]

def crepBody362_3 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody362_2

def crepBody362_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody362_5 : CrepProg (BitVec 64) :=
.seq crepBody362_3 crepBody362_4

def crepBody362_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody362_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody362_5 crepBody362_6

def crepBody362_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody362_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 10)

def crepBody362_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 11)

def crepBody362_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 12)

def crepBody362_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 13)

def crepBody362_13 : CrepProg (BitVec 64) :=
.seq crepBody362_12 crepBody362_6

def crepBody362_14 : CrepProg (BitVec 64) :=
.seq crepBody362_11 crepBody362_13

def crepBody362_15 : CrepProg (BitVec 64) :=
.seq crepBody362_10 crepBody362_14

def crepBody362_16 : CrepProg (BitVec 64) :=
.seq crepBody362_9 crepBody362_15

def crepBody362_17 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 5) crepBody362_16

def crepBody362_18 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 4) crepBody362_17

def crepBody362_19 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 3) crepBody362_18

def crepBody362_20 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 2) crepBody362_19

def crepBody362_21 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 8) crepBody362_20

def crepBody362_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "jset"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 8]

def crepBody362_23 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody362_22

def crepBody362_24 : CrepProg (BitVec 64) :=
.seq crepBody362_21 crepBody362_23

def crepBody362_25 : CrepProg (BitVec 64) :=
.seq crepBody362_24 crepBody362_4

def crepBody362_26 : CrepProg (BitVec 64) :=
.seq crepBody362_8 crepBody362_25

def crepBody362_27 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody362_26

def crepBody362_28 : CrepProg (BitVec 64) :=
.seq crepBody362_7 crepBody362_27

def crepBody362_29 : CrepProg (BitVec 64) :=
.seq crepBody362_1 crepBody362_28

def crepBody362_30 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody362_29

def crepBody362_31 : CrepProg (BitVec 64) :=
.seq crepBody362_0 crepBody362_30

def crepBody362_32 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody362_31

def data362 : CrepProg (BitVec 64) := crepBody362_32
def output362 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 101#8, 116#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 105#8, 101#8, 110#8, 116#8, 95#8, 115#8, 116#8, 111#8,
    114#8, 97#8, 103#8, 101#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data362)
end InitECandidate.Proofs.FrontendStages.Crep
