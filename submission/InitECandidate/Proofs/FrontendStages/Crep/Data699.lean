import InitECandidate.Proofs.FrontendStages.Crep.Translate683
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody699_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody699_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 576#64]

def crepBody699_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 576#64]

def crepBody699_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "fp12_copy" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 1]

def crepBody699_4 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody699_3

def crepBody699_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "fp12_set_one" [Flapjack.CrepExp.var 4]

def crepBody699_6 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody699_5

def crepBody699_7 : CrepProg (BitVec 64) :=
.seq crepBody699_4 crepBody699_6

def crepBody699_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 8)

def crepBody699_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody699_10 : CrepProg (BitVec 64) :=
.seq crepBody699_8 crepBody699_9

def crepBody699_11 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]) crepBody699_10

def crepBody699_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "fp12_mul"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 4]

def crepBody699_13 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody699_12

def crepBody699_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 1#64)) crepBody699_13 crepBody699_9

def crepBody699_15 : CrepProg (BitVec 64) :=
.seq crepBody699_11 crepBody699_14

def crepBody699_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "fp12_mul"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 3]

def crepBody699_17 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody699_16

def crepBody699_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.const 1#64)

def crepBody699_19 : CrepProg (BitVec 64) :=
.seq crepBody699_18 crepBody699_9

def crepBody699_20 : CrepProg (BitVec 64) :=
.seq crepBody699_17 crepBody699_19

def crepBody699_21 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and
    [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 7),
      Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 1#64)) crepBody699_20 crepBody699_9

def crepBody699_22 : CrepProg (BitVec 64) :=
.seq crepBody699_15 crepBody699_21

def crepBody699_23 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 7)) crepBody699_22

def crepBody699_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "fp12_copy" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 4]

def crepBody699_25 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody699_24

def crepBody699_26 : CrepProg (BitVec 64) :=
.seq crepBody699_23 crepBody699_25

def crepBody699_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody699_28 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody699_27

def crepBody699_29 : CrepProg (BitVec 64) :=
.seq crepBody699_26 crepBody699_28

def crepBody699_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody699_31 : CrepProg (BitVec 64) :=
.seq crepBody699_29 crepBody699_30

def crepBody699_32 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 64#64) crepBody699_31

def crepBody699_33 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody699_32

def crepBody699_34 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
      Flapjack.CrepExp.const 1376#64])) crepBody699_33

def crepBody699_35 : CrepProg (BitVec 64) :=
.seq crepBody699_7 crepBody699_34

def crepBody699_36 : CrepProg (BitVec 64) :=
.seq crepBody699_2 crepBody699_35

def crepBody699_37 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody699_36

def crepBody699_38 : CrepProg (BitVec 64) :=
.seq crepBody699_1 crepBody699_37

def crepBody699_39 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody699_38

def crepBody699_40 : CrepProg (BitVec 64) :=
.seq crepBody699_0 crepBody699_39

def crepBody699_41 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody699_40

def data699 : CrepProg (BitVec 64) := crepBody699_41
def output699 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [102#8, 112#8, 49#8, 50#8, 95#8, 112#8, 111#8, 119#8, 95#8, 97#8, 98#8, 115#8, 120#8], [0, 1], crepProgToHOL data699)
end InitECandidate.Proofs.FrontendStages.Crep
