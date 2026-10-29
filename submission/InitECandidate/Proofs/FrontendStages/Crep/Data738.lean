import InitECandidate.Proofs.FrontendStages.Crep.Translate722
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody738_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "heap_mark" []

def crepBody738_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody738_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody738_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "fp2_copy"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
          [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64],
            Flapjack.CrepExp.const 96#64]]]

def crepBody738_4 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody738_3

def crepBody738_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp2_mul"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 3]

def crepBody738_6 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody738_5

def crepBody738_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp2_mul"
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 4,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 96#64]],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
          [Flapjack.CrepExp.op Flapjack.BinOp.sub
              [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 2#64],
                Flapjack.CrepExp.var 8],
            Flapjack.CrepExp.const 96#64]]]

def crepBody738_8 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody738_7

def crepBody738_9 : CrepProg (BitVec 64) :=
.seq crepBody738_6 crepBody738_8

def crepBody738_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp2_add"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody738_11 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody738_10

def crepBody738_12 : CrepProg (BitVec 64) :=
.seq crepBody738_9 crepBody738_11

def crepBody738_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 9)

def crepBody738_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody738_15 : CrepProg (BitVec 64) :=
.seq crepBody738_13 crepBody738_14

def crepBody738_16 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 1#64]) crepBody738_15

def crepBody738_17 : CrepProg (BitVec 64) :=
.seq crepBody738_12 crepBody738_16

def crepBody738_18 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 8)
  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64])) crepBody738_17

def crepBody738_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp2_copy" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 6]

def crepBody738_20 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody738_19

def crepBody738_21 : CrepProg (BitVec 64) :=
.seq crepBody738_18 crepBody738_20

def crepBody738_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "heap_release" [Flapjack.CrepExp.var 5]

def crepBody738_23 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody738_22

def crepBody738_24 : CrepProg (BitVec 64) :=
.seq crepBody738_21 crepBody738_23

def crepBody738_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody738_26 : CrepProg (BitVec 64) :=
.seq crepBody738_24 crepBody738_25

def crepBody738_27 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody738_26

def crepBody738_28 : CrepProg (BitVec 64) :=
.seq crepBody738_4 crepBody738_27

def crepBody738_29 : CrepProg (BitVec 64) :=
.seq crepBody738_2 crepBody738_28

def crepBody738_30 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody738_29

def crepBody738_31 : CrepProg (BitVec 64) :=
.seq crepBody738_1 crepBody738_30

def crepBody738_32 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody738_31

def crepBody738_33 : CrepProg (BitVec 64) :=
.seq crepBody738_0 crepBody738_32

def crepBody738_34 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody738_33

def data738 : CrepProg (BitVec 64) := crepBody738_34
def output738 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [105#8, 115#8, 111#8, 95#8, 104#8, 111#8, 114#8, 110#8, 101#8, 114#8, 95#8, 102#8, 112#8, 50#8], [0, 1, 2, 3, 4], crepProgToHOL data738)
end InitECandidate.Proofs.FrontendStages.Crep
