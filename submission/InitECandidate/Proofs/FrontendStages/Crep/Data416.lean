import InitECandidate.Proofs.FrontendStages.Crep.Translate400
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody416_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody416_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody416_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody416_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 0#64)) crepBody416_1 crepBody416_2

def crepBody416_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "sat_word"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody416_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "sat_word"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody416_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "add_sat" [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10]

def crepBody416_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 18446744073709551615#64, Flapjack.CrepExp.const 0#64]

def crepBody416_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 18446744073709551615#64)) crepBody416_7 crepBody416_2

def crepBody416_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "ceil32" [Flapjack.CrepExp.var 12]

def crepBody416_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "ceil32" [Flapjack.CrepExp.var 11]

def crepBody416_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 14)) crepBody416_1 crepBody416_2

def crepBody416_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "memory_gas_cost" [Flapjack.CrepExp.var 14]

def crepBody416_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "memory_gas_cost" [Flapjack.CrepExp.var 13]

def crepBody416_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 18446744073709551615#64)) crepBody416_7 crepBody416_2

def crepBody416_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 13]]

def crepBody416_16 : CrepProg (BitVec 64) :=
.seq crepBody416_14 crepBody416_15

def crepBody416_17 : CrepProg (BitVec 64) :=
.seq crepBody416_13 crepBody416_16

def crepBody416_18 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody416_17

def crepBody416_19 : CrepProg (BitVec 64) :=
.seq crepBody416_12 crepBody416_18

def crepBody416_20 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody416_19

def crepBody416_21 : CrepProg (BitVec 64) :=
.seq crepBody416_11 crepBody416_20

def crepBody416_22 : CrepProg (BitVec 64) :=
.seq crepBody416_10 crepBody416_21

def crepBody416_23 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody416_22

def crepBody416_24 : CrepProg (BitVec 64) :=
.seq crepBody416_9 crepBody416_23

def crepBody416_25 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody416_24

def crepBody416_26 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 32#64])) crepBody416_25

def crepBody416_27 : CrepProg (BitVec 64) :=
.seq crepBody416_8 crepBody416_26

def crepBody416_28 : CrepProg (BitVec 64) :=
.seq crepBody416_6 crepBody416_27

def crepBody416_29 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody416_28

def crepBody416_30 : CrepProg (BitVec 64) :=
.seq crepBody416_5 crepBody416_29

def crepBody416_31 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody416_30

def crepBody416_32 : CrepProg (BitVec 64) :=
.seq crepBody416_4 crepBody416_31

def crepBody416_33 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody416_32

def crepBody416_34 : CrepProg (BitVec 64) :=
.seq crepBody416_3 crepBody416_33

def crepBody416_35 : CrepProg (BitVec 64) :=
.seq crepBody416_0 crepBody416_34

def crepBody416_36 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody416_35

def data416 : CrepProg (BitVec 64) := crepBody416_36
def output416 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [101#8, 120#8, 116#8, 101#8, 110#8, 100#8, 95#8, 109#8, 101#8, 109#8, 111#8, 114#8, 121#8, 95#8, 99#8, 111#8, 115#8,
    116#8, 49#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data416)
end InitECandidate.Proofs.FrontendStages.Crep
