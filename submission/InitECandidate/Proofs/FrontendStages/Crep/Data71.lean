import InitECandidate.Proofs.FrontendStages.Crep.Translate55
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody71_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody71_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody71_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11])
  (Flapjack.CrepExp.const 0#64)) crepBody71_0 crepBody71_1

def crepBody71_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12, 13, 14, 15, 16], none)) "u256_add_carry"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody71_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "u256_mod"
  [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20,
    Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11]

def crepBody71_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 0#64)) crepBody71_4 crepBody71_1

def crepBody71_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "u256_to_digits"
  [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19,
    Flapjack.CrepExp.var 20]

def crepBody71_7 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody71_6

def crepBody71_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.var 23)

def crepBody71_9 : CrepProg (BitVec 64) :=
.seq crepBody71_8 crepBody71_1

def crepBody71_10 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 1#64) crepBody71_9

def crepBody71_11 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 21, Flapjack.CrepExp.const 64#64]) crepBody71_10

def crepBody71_12 : CrepProg (BitVec 64) :=
.seq crepBody71_7 crepBody71_11

def crepBody71_13 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody71_9

def crepBody71_14 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 21, Flapjack.CrepExp.const 72#64]) crepBody71_13

def crepBody71_15 : CrepProg (BitVec 64) :=
.seq crepBody71_12 crepBody71_14

def crepBody71_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "digits_divmod"
  [Flapjack.CrepExp.var 21, Flapjack.CrepExp.const 10#64, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11]

def crepBody71_17 : CrepProg (BitVec 64) :=
.seq crepBody71_15 crepBody71_16

def crepBody71_18 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.const 424#64]) crepBody71_17

def crepBody71_19 : CrepProg (BitVec 64) :=
.seq crepBody71_5 crepBody71_18

def crepBody71_20 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 15) crepBody71_19

def crepBody71_21 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.var 14) crepBody71_20

def crepBody71_22 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 13) crepBody71_21

def crepBody71_23 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.var 12) crepBody71_22

def crepBody71_24 : CrepProg (BitVec 64) :=
.seq crepBody71_3 crepBody71_23

def crepBody71_25 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody71_24

def crepBody71_26 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody71_25

def crepBody71_27 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody71_26

def crepBody71_28 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody71_27

def crepBody71_29 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody71_28

def crepBody71_30 : CrepProg (BitVec 64) :=
.seq crepBody71_2 crepBody71_29

def data71 : CrepProg (BitVec 64) := crepBody71_30
def output71 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 97#8, 100#8, 100#8, 109#8, 111#8, 100#8], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], crepProgToHOL data71)
end InitECandidate.Proofs.FrontendStages.Crep
