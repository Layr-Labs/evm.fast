import InitECandidate.Proofs.FrontendStages.Crep.Translate664
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody680_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_mark" []

def crepBody680_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody680_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody680_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "fp2_copy" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 1]

def crepBody680_4 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody680_3

def crepBody680_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "fp2_set_one" [Flapjack.CrepExp.var 6]

def crepBody680_6 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody680_5

def crepBody680_7 : CrepProg (BitVec 64) :=
.seq crepBody680_4 crepBody680_6

def crepBody680_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 9)

def crepBody680_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody680_10 : CrepProg (BitVec 64) :=
.seq crepBody680_8 crepBody680_9

def crepBody680_11 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 1#64]) crepBody680_10

def crepBody680_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp2_sqr" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 6]

def crepBody680_13 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody680_12

def crepBody680_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 1#64)) crepBody680_13 crepBody680_9

def crepBody680_15 : CrepProg (BitVec 64) :=
.seq crepBody680_11 crepBody680_14

def crepBody680_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_mul"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5]

def crepBody680_17 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody680_16

def crepBody680_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.const 1#64)

def crepBody680_19 : CrepProg (BitVec 64) :=
.seq crepBody680_18 crepBody680_9

def crepBody680_20 : CrepProg (BitVec 64) :=
.seq crepBody680_17 crepBody680_19

def crepBody680_21 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 1#64)) crepBody680_20 crepBody680_9

def crepBody680_22 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr
      (Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 2,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 6#64),
                Flapjack.CrepExp.const 8#64]]))
      (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 63#64]),
    Flapjack.CrepExp.const 1#64]) crepBody680_21

def crepBody680_23 : CrepProg (BitVec 64) :=
.seq crepBody680_15 crepBody680_22

def crepBody680_24 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 8)) crepBody680_23

def crepBody680_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp2_copy" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 6]

def crepBody680_26 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody680_25

def crepBody680_27 : CrepProg (BitVec 64) :=
.seq crepBody680_24 crepBody680_26

def crepBody680_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "heap_release" [Flapjack.CrepExp.var 4]

def crepBody680_29 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody680_28

def crepBody680_30 : CrepProg (BitVec 64) :=
.seq crepBody680_27 crepBody680_29

def crepBody680_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody680_32 : CrepProg (BitVec 64) :=
.seq crepBody680_30 crepBody680_31

def crepBody680_33 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 64#64]) crepBody680_32

def crepBody680_34 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody680_33

def crepBody680_35 : CrepProg (BitVec 64) :=
.seq crepBody680_7 crepBody680_34

def crepBody680_36 : CrepProg (BitVec 64) :=
.seq crepBody680_2 crepBody680_35

def crepBody680_37 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody680_36

def crepBody680_38 : CrepProg (BitVec 64) :=
.seq crepBody680_1 crepBody680_37

def crepBody680_39 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody680_38

def crepBody680_40 : CrepProg (BitVec 64) :=
.seq crepBody680_0 crepBody680_39

def crepBody680_41 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody680_40

def data680 : CrepProg (BitVec 64) := crepBody680_41
def output680 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 112#8, 111#8, 119#8], [0, 1, 2, 3], crepProgToHOL data680)
end InitECandidate.Proofs.FrontendStages.Crep
