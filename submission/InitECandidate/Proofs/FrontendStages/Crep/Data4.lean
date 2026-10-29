import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody4_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "trap_with" [Flapjack.CrepExp.const 1#64]

def crepBody4_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody4_0

def crepBody4_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody4_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 2952790016#64, Flapjack.CrepExp.var 1])
  (Flapjack.CrepExp.var 0)) crepBody4_1 crepBody4_2

def crepBody4_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "trap_with" [Flapjack.CrepExp.const 1#64]

def crepBody4_5 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody4_4

def crepBody4_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 2952790016#64) (Flapjack.CrepExp.var 2)) crepBody4_5 crepBody4_2

def crepBody4_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody4_8 : CrepProg (BitVec 64) :=
.seq crepBody4_7 crepBody4_2

def crepBody4_9 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 2) crepBody4_8

def crepBody4_10 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 8#64]) crepBody4_9

def crepBody4_11 : CrepProg (BitVec 64) :=
.seq crepBody4_6 crepBody4_10

def crepBody4_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody4_13 : CrepProg (BitVec 64) :=
.seq crepBody4_11 crepBody4_12

def crepBody4_14 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 7#64],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 8#64]]) crepBody4_13

def crepBody4_15 : CrepProg (BitVec 64) :=
.seq crepBody4_3 crepBody4_14

def crepBody4_16 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 8#64])) crepBody4_15

def data4 : CrepProg (BitVec 64) := crepBody4_16
def output4 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 108#8, 108#8, 111#8, 99#8], [0], crepProgToHOL data4)
end InitECandidate.Proofs.FrontendStages.Crep
