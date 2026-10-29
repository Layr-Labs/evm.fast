import InitECandidate.Proofs.FrontendStages.Crep.Translate97
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody113_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 128#64)

def crepBody113_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody113_2 : CrepProg (BitVec 64) :=
.seq crepBody113_0 crepBody113_1

def crepBody113_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody113_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody113_2 crepBody113_3

def crepBody113_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.var 1)

def crepBody113_6 : CrepProg (BitVec 64) :=
.seq crepBody113_5 crepBody113_1

def crepBody113_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 128#64)) crepBody113_6 crepBody113_3

def crepBody113_8 : CrepProg (BitVec 64) :=
.seq crepBody113_4 crepBody113_7

def crepBody113_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "rlp_be_len" [Flapjack.CrepExp.var 1]

def crepBody113_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 0)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 128#64, Flapjack.CrepExp.var 2])

def crepBody113_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_put_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64], Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.var 2]

def crepBody113_12 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody113_11

def crepBody113_13 : CrepProg (BitVec 64) :=
.seq crepBody113_10 crepBody113_12

def crepBody113_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 2]]

def crepBody113_15 : CrepProg (BitVec 64) :=
.seq crepBody113_13 crepBody113_14

def crepBody113_16 : CrepProg (BitVec 64) :=
.seq crepBody113_9 crepBody113_15

def crepBody113_17 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody113_16

def crepBody113_18 : CrepProg (BitVec 64) :=
.seq crepBody113_8 crepBody113_17

def data113 : CrepProg (BitVec 64) := crepBody113_18
def output113 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 119#8, 111#8, 114#8, 100#8], [0, 1], crepProgToHOL data113)
end InitECandidate.Proofs.FrontendStages.Crep
