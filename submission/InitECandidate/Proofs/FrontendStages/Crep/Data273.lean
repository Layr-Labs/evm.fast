import InitECandidate.Proofs.FrontendStages.Crep.Translate257
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody273_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4, 5], none)) "tx_scalar_item"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody273_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 6)

def crepBody273_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody273_3 : CrepProg (BitVec 64) :=
.seq crepBody273_1 crepBody273_2

def crepBody273_4 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 3) crepBody273_3

def crepBody273_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 6#64

def crepBody273_6 : CrepProg (BitVec 64) :=
.seq crepBody273_4 crepBody273_5

def crepBody273_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 8#64) (Flapjack.CrepExp.var 5)) crepBody273_6 crepBody273_2

def crepBody273_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 8)

def crepBody273_9 : CrepProg (BitVec 64) :=
.seq crepBody273_8 crepBody273_2

def crepBody273_10 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 7])]) crepBody273_9

def crepBody273_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 8)

def crepBody273_12 : CrepProg (BitVec 64) :=
.seq crepBody273_11 crepBody273_2

def crepBody273_13 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]) crepBody273_12

def crepBody273_14 : CrepProg (BitVec 64) :=
.seq crepBody273_10 crepBody273_13

def crepBody273_15 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 5)) crepBody273_14

def crepBody273_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 6]

def crepBody273_17 : CrepProg (BitVec 64) :=
.seq crepBody273_15 crepBody273_16

def crepBody273_18 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody273_17

def crepBody273_19 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody273_18

def crepBody273_20 : CrepProg (BitVec 64) :=
.seq crepBody273_7 crepBody273_19

def crepBody273_21 : CrepProg (BitVec 64) :=
.seq crepBody273_0 crepBody273_20

def crepBody273_22 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody273_21

def crepBody273_23 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody273_22

def data273 : CrepProg (BitVec 64) := crepBody273_23
def output273 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [116#8, 120#8, 95#8, 115#8, 99#8, 97#8, 108#8, 97#8, 114#8, 95#8, 119#8, 111#8, 114#8, 100#8], [0, 1, 2, 3], crepProgToHOL data273)
end InitECandidate.Proofs.FrontendStages.Crep
