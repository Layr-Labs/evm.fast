import InitECandidate.Proofs.FrontendStages.Crep.Translate49
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody65_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody65_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody65_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7])
  (Flapjack.CrepExp.const 0#64)) crepBody65_0 crepBody65_1

def crepBody65_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "u256_lt"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody65_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody65_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 1#64)) crepBody65_4 crepBody65_1

def crepBody65_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10], none)) "udivmod" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 4]

def crepBody65_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody65_8 : CrepProg (BitVec 64) :=
.seq crepBody65_6 crepBody65_7

def crepBody65_9 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody65_8

def crepBody65_10 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody65_9

def crepBody65_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 5,
      Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7])
  (Flapjack.CrepExp.const 0#64)) crepBody65_10 crepBody65_1

def crepBody65_12 : CrepProg (BitVec 64) :=
.seq crepBody65_5 crepBody65_11

def crepBody65_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "u256_to_digits"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.var 3]

def crepBody65_14 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody65_13

def crepBody65_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11, 12, 13], none)) "digits_divmod"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody65_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15, 16, 17], none)) "digits_to_u256"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 40#64]),
        Flapjack.CrepExp.const 216#64]]

def crepBody65_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17,
    Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody65_18 : CrepProg (BitVec 64) :=
.seq crepBody65_16 crepBody65_17

def crepBody65_19 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody65_18

def crepBody65_20 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody65_19

def crepBody65_21 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody65_20

def crepBody65_22 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody65_21

def crepBody65_23 : CrepProg (BitVec 64) :=
.seq crepBody65_15 crepBody65_22

def crepBody65_24 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody65_23

def crepBody65_25 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody65_24

def crepBody65_26 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody65_25

def crepBody65_27 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody65_26

def crepBody65_28 : CrepProg (BitVec 64) :=
.seq crepBody65_14 crepBody65_27

def crepBody65_29 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.const 424#64]) crepBody65_28

def crepBody65_30 : CrepProg (BitVec 64) :=
.seq crepBody65_12 crepBody65_29

def crepBody65_31 : CrepProg (BitVec 64) :=
.seq crepBody65_3 crepBody65_30

def crepBody65_32 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody65_31

def crepBody65_33 : CrepProg (BitVec 64) :=
.seq crepBody65_2 crepBody65_32

def data65 : CrepProg (BitVec 64) := crepBody65_33
def output65 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 100#8, 105#8, 118#8, 109#8, 111#8, 100#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data65)
end InitECandidate.Proofs.FrontendStages.Crep
