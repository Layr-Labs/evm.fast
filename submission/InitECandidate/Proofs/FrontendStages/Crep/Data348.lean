import InitECandidate.Proofs.FrontendStages.Crep.Translate332
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody348_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "sk_make" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody348_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4], none)) "htab_get"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.var 2]

def crepBody348_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody348_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody348_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody348_2 crepBody348_3

def crepBody348_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.load (Flapjack.CrepExp.var 4),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 24#64])]

def crepBody348_6 : CrepProg (BitVec 64) :=
.seq crepBody348_4 crepBody348_5

def crepBody348_7 : CrepProg (BitVec 64) :=
.seq crepBody348_1 crepBody348_6

def crepBody348_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody348_7

def crepBody348_9 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody348_8

def crepBody348_10 : CrepProg (BitVec 64) :=
.seq crepBody348_0 crepBody348_9

def crepBody348_11 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody348_10

def data348 : CrepProg (BitVec 64) := crepBody348_11
def output348 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [103#8, 101#8, 116#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 105#8, 101#8, 110#8, 116#8, 95#8, 115#8, 116#8, 111#8,
    114#8, 97#8, 103#8, 101#8], [0, 1], crepProgToHOL data348)
end InitECandidate.Proofs.FrontendStages.Crep
