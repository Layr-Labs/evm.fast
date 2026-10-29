import InitECandidate.Proofs.FrontendStages.Crep.Translate704
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody720_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_mark" []

def crepBody720_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 288#64]

def crepBody720_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "g2_set_inf" [Flapjack.CrepExp.var 5]

def crepBody720_3 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody720_2

def crepBody720_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 8)

def crepBody720_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody720_6 : CrepProg (BitVec 64) :=
.seq crepBody720_4 crepBody720_5

def crepBody720_7 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]) crepBody720_6

def crepBody720_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "g2_double" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5]

def crepBody720_9 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody720_8

def crepBody720_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 1#64)) crepBody720_9 crepBody720_5

def crepBody720_11 : CrepProg (BitVec 64) :=
.seq crepBody720_7 crepBody720_10

def crepBody720_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "g2_add"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 1]

def crepBody720_13 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody720_12

def crepBody720_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.const 1#64)

def crepBody720_15 : CrepProg (BitVec 64) :=
.seq crepBody720_14 crepBody720_5

def crepBody720_16 : CrepProg (BitVec 64) :=
.seq crepBody720_13 crepBody720_15

def crepBody720_17 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 1#64)) crepBody720_16 crepBody720_5

def crepBody720_18 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr
      (Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 2,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 6#64),
                Flapjack.CrepExp.const 8#64]]))
      (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 63#64]),
    Flapjack.CrepExp.const 1#64]) crepBody720_17

def crepBody720_19 : CrepProg (BitVec 64) :=
.seq crepBody720_11 crepBody720_18

def crepBody720_20 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 6)) crepBody720_19

def crepBody720_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "g2_copy" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 5]

def crepBody720_22 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody720_21

def crepBody720_23 : CrepProg (BitVec 64) :=
.seq crepBody720_20 crepBody720_22

def crepBody720_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "heap_release" [Flapjack.CrepExp.var 4]

def crepBody720_25 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody720_24

def crepBody720_26 : CrepProg (BitVec 64) :=
.seq crepBody720_23 crepBody720_25

def crepBody720_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody720_28 : CrepProg (BitVec 64) :=
.seq crepBody720_26 crepBody720_27

def crepBody720_29 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody720_28

def crepBody720_30 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 64#64]) crepBody720_29

def crepBody720_31 : CrepProg (BitVec 64) :=
.seq crepBody720_3 crepBody720_30

def crepBody720_32 : CrepProg (BitVec 64) :=
.seq crepBody720_1 crepBody720_31

def crepBody720_33 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody720_32

def crepBody720_34 : CrepProg (BitVec 64) :=
.seq crepBody720_0 crepBody720_33

def crepBody720_35 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody720_34

def data720 : CrepProg (BitVec 64) := crepBody720_35
def output720 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 50#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2, 3], crepProgToHOL data720)
end InitECandidate.Proofs.FrontendStages.Crep
