import InitECandidate.Proofs.FrontendStages.Crep.Translate255
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody271_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4, 5, 6], none)) "rlp_item"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64])]

def crepBody271_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 7)

def crepBody271_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody271_3 : CrepProg (BitVec 64) :=
.seq crepBody271_1 crepBody271_2

def crepBody271_4 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 10#64) crepBody271_3

def crepBody271_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 6#64

def crepBody271_6 : CrepProg (BitVec 64) :=
.seq crepBody271_4 crepBody271_5

def crepBody271_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody271_6 crepBody271_2

def crepBody271_8 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 11#64) crepBody271_3

def crepBody271_9 : CrepProg (BitVec 64) :=
.seq crepBody271_8 crepBody271_5

def crepBody271_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 4))
  (Flapjack.CrepExp.const 0#64)) crepBody271_9 crepBody271_2

def crepBody271_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 5)) crepBody271_10 crepBody271_2

def crepBody271_12 : CrepProg (BitVec 64) :=
.seq crepBody271_7 crepBody271_11

def crepBody271_13 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 12#64) crepBody271_3

def crepBody271_14 : CrepProg (BitVec 64) :=
.seq crepBody271_13 crepBody271_5

def crepBody271_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 5)) crepBody271_14 crepBody271_2

def crepBody271_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody271_15 crepBody271_2

def crepBody271_17 : CrepProg (BitVec 64) :=
.seq crepBody271_12 crepBody271_16

def crepBody271_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody271_19 : CrepProg (BitVec 64) :=
.seq crepBody271_17 crepBody271_18

def crepBody271_20 : CrepProg (BitVec 64) :=
.seq crepBody271_0 crepBody271_19

def crepBody271_21 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody271_20

def crepBody271_22 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody271_21

def crepBody271_23 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody271_22

def crepBody271_24 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody271_23

def data271 : CrepProg (BitVec 64) := crepBody271_24
def output271 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [116#8, 120#8, 95#8, 115#8, 99#8, 97#8, 108#8, 97#8, 114#8, 95#8, 105#8, 116#8, 101#8, 109#8], [0, 1, 2], crepProgToHOL data271)
end InitECandidate.Proofs.FrontendStages.Crep
