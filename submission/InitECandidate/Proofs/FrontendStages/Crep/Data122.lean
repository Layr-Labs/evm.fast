import InitECandidate.Proofs.FrontendStages.Crep.Translate106
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody122_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "htab_find_leaf" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody122_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody122_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody122_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody122_1 crepBody122_2

def crepBody122_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memeq"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 5,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 4]],
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3]

def crepBody122_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody122_1 crepBody122_2

def crepBody122_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 1#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64]),
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64],
          Flapjack.CrepExp.const 8#64])]

def crepBody122_7 : CrepProg (BitVec 64) :=
.seq crepBody122_5 crepBody122_6

def crepBody122_8 : CrepProg (BitVec 64) :=
.seq crepBody122_4 crepBody122_7

def crepBody122_9 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody122_8

def crepBody122_10 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody122_9

def crepBody122_11 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody122_10

def crepBody122_12 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody122_11

def crepBody122_13 : CrepProg (BitVec 64) :=
.seq crepBody122_3 crepBody122_12

def crepBody122_14 : CrepProg (BitVec 64) :=
.seq crepBody122_0 crepBody122_13

def crepBody122_15 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody122_14

def data122 : CrepProg (BitVec 64) := crepBody122_15
def output122 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 97#8, 98#8, 95#8, 103#8, 101#8, 116#8], [0, 1], crepProgToHOL data122)
end InitECandidate.Proofs.FrontendStages.Crep
