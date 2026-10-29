import InitECandidate.Proofs.FrontendStages.Crep.Translate348
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody364_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "get_account" [Flapjack.CrepExp.var 0]

def crepBody364_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "acct_copy" [Flapjack.CrepExp.var 5]

def crepBody364_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7, 8, 9], none)) "u256_add"
  [Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody364_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 11)

def crepBody364_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 12)

def crepBody364_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 13)

def crepBody364_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 14)

def crepBody364_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody364_8 : CrepProg (BitVec 64) :=
.seq crepBody364_6 crepBody364_7

def crepBody364_9 : CrepProg (BitVec 64) :=
.seq crepBody364_5 crepBody364_8

def crepBody364_10 : CrepProg (BitVec 64) :=
.seq crepBody364_4 crepBody364_9

def crepBody364_11 : CrepProg (BitVec 64) :=
.seq crepBody364_3 crepBody364_10

def crepBody364_12 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 9) crepBody364_11

def crepBody364_13 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 8) crepBody364_12

def crepBody364_14 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 7) crepBody364_13

def crepBody364_15 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 6) crepBody364_14

def crepBody364_16 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 8#64]) crepBody364_15

def crepBody364_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "modify_state_commit" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 5]

def crepBody364_18 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody364_17

def crepBody364_19 : CrepProg (BitVec 64) :=
.seq crepBody364_16 crepBody364_18

def crepBody364_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody364_21 : CrepProg (BitVec 64) :=
.seq crepBody364_19 crepBody364_20

def crepBody364_22 : CrepProg (BitVec 64) :=
.seq crepBody364_2 crepBody364_21

def crepBody364_23 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody364_22

def crepBody364_24 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody364_23

def crepBody364_25 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody364_24

def crepBody364_26 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody364_25

def crepBody364_27 : CrepProg (BitVec 64) :=
.seq crepBody364_1 crepBody364_26

def crepBody364_28 : CrepProg (BitVec 64) :=
.seq crepBody364_0 crepBody364_27

def crepBody364_29 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody364_28

def data364 : CrepProg (BitVec 64) := crepBody364_29
def output364 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 114#8, 101#8, 97#8, 116#8, 101#8, 95#8, 101#8, 116#8, 104#8, 101#8, 114#8], [0, 1, 2, 3, 4], crepProgToHOL data364)
end InitECandidate.Proofs.FrontendStages.Crep
