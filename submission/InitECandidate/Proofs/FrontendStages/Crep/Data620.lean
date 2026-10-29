import InitECandidate.Proofs.FrontendStages.Crep.Translate604
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody620_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "heap_mark" []

def crepBody620_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "alloc" [Flapjack.CrepExp.var 7]

def crepBody620_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "alloc" [Flapjack.CrepExp.var 7]

def crepBody620_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "ecp_set_inf" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 9]

def crepBody620_4 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody620_3

def crepBody620_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "memcpy"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 7]

def crepBody620_6 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody620_5

def crepBody620_7 : CrepProg (BitVec 64) :=
.seq crepBody620_4 crepBody620_6

def crepBody620_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "u256_bit_length"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody620_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "u256_bit"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.var 12]

def crepBody620_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "ecp_add"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10]

def crepBody620_11 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody620_10

def crepBody620_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody620_13 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 1#64)) crepBody620_11 crepBody620_12

def crepBody620_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.var 14)

def crepBody620_15 : CrepProg (BitVec 64) :=
.seq crepBody620_14 crepBody620_12

def crepBody620_16 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 1#64]) crepBody620_15

def crepBody620_17 : CrepProg (BitVec 64) :=
.seq crepBody620_13 crepBody620_16

def crepBody620_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "ecp_double"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 10]

def crepBody620_19 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody620_18

def crepBody620_20 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 11)) crepBody620_19 crepBody620_12

def crepBody620_21 : CrepProg (BitVec 64) :=
.seq crepBody620_17 crepBody620_20

def crepBody620_22 : CrepProg (BitVec 64) :=
.seq crepBody620_9 crepBody620_21

def crepBody620_23 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody620_22

def crepBody620_24 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 11)) crepBody620_23

def crepBody620_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "memcpy"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 7]

def crepBody620_26 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody620_25

def crepBody620_27 : CrepProg (BitVec 64) :=
.seq crepBody620_24 crepBody620_26

def crepBody620_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "heap_release" [Flapjack.CrepExp.var 8]

def crepBody620_29 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody620_28

def crepBody620_30 : CrepProg (BitVec 64) :=
.seq crepBody620_27 crepBody620_29

def crepBody620_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody620_32 : CrepProg (BitVec 64) :=
.seq crepBody620_30 crepBody620_31

def crepBody620_33 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody620_32

def crepBody620_34 : CrepProg (BitVec 64) :=
.seq crepBody620_8 crepBody620_33

def crepBody620_35 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody620_34

def crepBody620_36 : CrepProg (BitVec 64) :=
.seq crepBody620_7 crepBody620_35

def crepBody620_37 : CrepProg (BitVec 64) :=
.seq crepBody620_2 crepBody620_36

def crepBody620_38 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody620_37

def crepBody620_39 : CrepProg (BitVec 64) :=
.seq crepBody620_1 crepBody620_38

def crepBody620_40 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody620_39

def crepBody620_41 : CrepProg (BitVec 64) :=
.seq crepBody620_0 crepBody620_40

def crepBody620_42 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody620_41

def crepBody620_43 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
  [Flapjack.CrepExp.const 3#64,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]]) crepBody620_42

def data620 : CrepProg (BitVec 64) := crepBody620_43
def output620 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [101#8, 99#8, 112#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2, 3, 4, 5, 6], crepProgToHOL data620)
end InitECandidate.Proofs.FrontendStages.Crep
