import InitECandidate.Proofs.FrontendStages.Crep.Translate56
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody72_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody72_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody72_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11])
  (Flapjack.CrepExp.const 0#64)) crepBody72_0 crepBody72_1

def crepBody72_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13, 14], none)) "mul64x64" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 4]

def crepBody72_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "u256_mod"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11]

def crepBody72_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 0#64)) crepBody72_4 crepBody72_1

def crepBody72_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "u256_to_digits"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.const 0#64]

def crepBody72_7 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody72_6

def crepBody72_8 : CrepProg (BitVec 64) :=
.seq crepBody72_5 crepBody72_7

def crepBody72_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "digits_divmod"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11]

def crepBody72_10 : CrepProg (BitVec 64) :=
.seq crepBody72_8 crepBody72_9

def crepBody72_11 : CrepProg (BitVec 64) :=
.seq crepBody72_3 crepBody72_10

def crepBody72_12 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody72_11

def crepBody72_13 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody72_12

def crepBody72_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 5,
      Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7])
  (Flapjack.CrepExp.const 0#64)) crepBody72_13 crepBody72_1

def crepBody72_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13, 14, 15, 16, 17, 18, 19, 20], none)) "u256_mul_full"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody72_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "u256_to_digits"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15,
    Flapjack.CrepExp.var 16]

def crepBody72_17 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody72_16

def crepBody72_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "u256_to_digits"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 64#64],
    Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]

def crepBody72_19 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody72_18

def crepBody72_20 : CrepProg (BitVec 64) :=
.seq crepBody72_17 crepBody72_19

def crepBody72_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "digits_divmod"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 16#64, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11]

def crepBody72_22 : CrepProg (BitVec 64) :=
.seq crepBody72_20 crepBody72_21

def crepBody72_23 : CrepProg (BitVec 64) :=
.seq crepBody72_15 crepBody72_22

def crepBody72_24 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody72_23

def crepBody72_25 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody72_24

def crepBody72_26 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody72_25

def crepBody72_27 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody72_26

def crepBody72_28 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody72_27

def crepBody72_29 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody72_28

def crepBody72_30 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody72_29

def crepBody72_31 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody72_30

def crepBody72_32 : CrepProg (BitVec 64) :=
.seq crepBody72_14 crepBody72_31

def crepBody72_33 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.const 424#64]) crepBody72_32

def crepBody72_34 : CrepProg (BitVec 64) :=
.seq crepBody72_2 crepBody72_33

def data72 : CrepProg (BitVec 64) := crepBody72_34
def output72 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 109#8, 117#8, 108#8, 109#8, 111#8, 100#8], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], crepProgToHOL data72)
end InitECandidate.Proofs.FrontendStages.Crep
