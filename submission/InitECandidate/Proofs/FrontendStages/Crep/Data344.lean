import InitECandidate.Proofs.FrontendStages.Crep.Translate328
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody344_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "memeq"
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 136#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody344_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody344_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody344_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody344_1 crepBody344_2

def crepBody344_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4], none)) "htab_get"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.var 0]

def crepBody344_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.load (Flapjack.CrepExp.var 4),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64])]

def crepBody344_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody344_5 crepBody344_2

def crepBody344_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4], none)) "htab_get"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
          Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.var 0]

def crepBody344_8 : CrepProg (BitVec 64) :=
.seq crepBody344_6 crepBody344_7

def crepBody344_9 : CrepProg (BitVec 64) :=
.seq crepBody344_8 crepBody344_6

def crepBody344_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "sk_make" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 0]

def crepBody344_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "htab_set"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]

def crepBody344_12 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody344_11

def crepBody344_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7], none)) "ws_get_code" [Flapjack.CrepExp.var 0]

def crepBody344_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody344_15 : CrepProg (BitVec 64) :=
.seq crepBody344_13 crepBody344_14

def crepBody344_16 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody344_15

def crepBody344_17 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody344_16

def crepBody344_18 : CrepProg (BitVec 64) :=
.seq crepBody344_12 crepBody344_17

def crepBody344_19 : CrepProg (BitVec 64) :=
.seq crepBody344_10 crepBody344_18

def crepBody344_20 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody344_19

def crepBody344_21 : CrepProg (BitVec 64) :=
.seq crepBody344_9 crepBody344_20

def crepBody344_22 : CrepProg (BitVec 64) :=
.seq crepBody344_4 crepBody344_21

def crepBody344_23 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody344_22

def crepBody344_24 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody344_23

def crepBody344_25 : CrepProg (BitVec 64) :=
.seq crepBody344_3 crepBody344_24

def crepBody344_26 : CrepProg (BitVec 64) :=
.seq crepBody344_0 crepBody344_25

def crepBody344_27 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody344_26

def data344 : CrepProg (BitVec 64) := crepBody344_27
def output344 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 101#8, 116#8, 95#8, 99#8, 111#8, 100#8, 101#8], [0, 1], crepProgToHOL data344)
end InitECandidate.Proofs.FrontendStages.Crep
