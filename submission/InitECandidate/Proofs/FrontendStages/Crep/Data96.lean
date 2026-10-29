import InitECandidate.Proofs.FrontendStages.Crep.Translate80
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody96_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "rlp_fail" [Flapjack.CrepExp.const 2#64]

def crepBody96_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody96_0

def crepBody96_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody96_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 1#64) (Flapjack.CrepExp.var 1)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 0))
        (Flapjack.CrepExp.const 0#64))]) crepBody96_1 crepBody96_2

def crepBody96_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 4)

def crepBody96_5 : CrepProg (BitVec 64) :=
.seq crepBody96_4 crepBody96_2

def crepBody96_6 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3])]) crepBody96_5

def crepBody96_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 4)

def crepBody96_8 : CrepProg (BitVec 64) :=
.seq crepBody96_7 crepBody96_2

def crepBody96_9 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody96_8

def crepBody96_10 : CrepProg (BitVec 64) :=
.seq crepBody96_6 crepBody96_9

def crepBody96_11 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 1)) crepBody96_10

def crepBody96_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody96_13 : CrepProg (BitVec 64) :=
.seq crepBody96_11 crepBody96_12

def crepBody96_14 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody96_13

def crepBody96_15 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody96_14

def crepBody96_16 : CrepProg (BitVec 64) :=
.seq crepBody96_3 crepBody96_15

def data96 : CrepProg (BitVec 64) := crepBody96_16
def output96 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 114#8, 101#8, 97#8, 100#8, 95#8, 108#8, 101#8, 110#8, 103#8, 116#8, 104#8], [0, 1], crepProgToHOL data96)
end InitECandidate.Proofs.FrontendStages.Crep
