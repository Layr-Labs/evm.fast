import InitECandidate.Proofs.FrontendStages.Crep.Translate527
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody543_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 4)

def crepBody543_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody543_2 : CrepProg (BitVec 64) :=
.seq crepBody543_0 crepBody543_1

def crepBody543_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 11#64) crepBody543_2

def crepBody543_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody543_5 : CrepProg (BitVec 64) :=
.seq crepBody543_3 crepBody543_4

def crepBody543_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 2))
  (Flapjack.CrepExp.const 239#64)) crepBody543_5 crepBody543_1

def crepBody543_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 3)) crepBody543_6 crepBody543_1

def crepBody543_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 4#64) crepBody543_2

def crepBody543_9 : CrepProg (BitVec 64) :=
.seq crepBody543_8 crepBody543_4

def crepBody543_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 65536#64) (Flapjack.CrepExp.var 3)) crepBody543_9 crepBody543_1

def crepBody543_11 : CrepProg (BitVec 64) :=
.seq crepBody543_7 crepBody543_10

def crepBody543_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "words_of" [Flapjack.CrepExp.var 3]

def crepBody543_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "charge_gas"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 6#64, Flapjack.CrepExp.var 4]]

def crepBody543_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody543_13

def crepBody543_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "charge_state_gas"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1530#64]]

def crepBody543_16 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody543_15

def crepBody543_17 : CrepProg (BitVec 64) :=
.seq crepBody543_14 crepBody543_16

def crepBody543_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]]

def crepBody543_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memcpy"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody543_20 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody543_19

def crepBody543_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "set_code"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 3]

def crepBody543_22 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody543_21

def crepBody543_23 : CrepProg (BitVec 64) :=
.seq crepBody543_20 crepBody543_22

def crepBody543_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody543_25 : CrepProg (BitVec 64) :=
.seq crepBody543_23 crepBody543_24

def crepBody543_26 : CrepProg (BitVec 64) :=
.seq crepBody543_18 crepBody543_25

def crepBody543_27 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody543_26

def crepBody543_28 : CrepProg (BitVec 64) :=
.seq crepBody543_17 crepBody543_27

def crepBody543_29 : CrepProg (BitVec 64) :=
.seq crepBody543_12 crepBody543_28

def crepBody543_30 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody543_29

def crepBody543_31 : CrepProg (BitVec 64) :=
.seq crepBody543_11 crepBody543_30

def crepBody543_32 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 128#64])) crepBody543_31

def crepBody543_33 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 120#64])) crepBody543_32

def data543 : CrepProg (BitVec 64) := crepBody543_33
def output543 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 114#8, 101#8, 97#8, 116#8, 101#8, 95#8, 102#8, 105#8, 110#8, 105#8, 115#8, 104#8], [0, 1], crepProgToHOL data543)
end InitECandidate.Proofs.FrontendStages.Crep
