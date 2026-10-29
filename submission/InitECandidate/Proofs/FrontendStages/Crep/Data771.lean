import InitECandidate.Proofs.FrontendStages.Crep.Translate755
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody771_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "max" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody771_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9
  (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
    [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 8],
      Flapjack.CrepExp.var 8])

def crepBody771_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody771_3 : CrepProg (BitVec 64) :=
.seq crepBody771_1 crepBody771_2

def crepBody771_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 32#64) (Flapjack.CrepExp.var 7)) crepBody771_3 crepBody771_2

def crepBody771_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "u256_bit_length"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody771_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 11)

def crepBody771_7 : CrepProg (BitVec 64) :=
.seq crepBody771_6 crepBody771_2

def crepBody771_8 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 1#64]) crepBody771_7

def crepBody771_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 10)) crepBody771_8 crepBody771_2

def crepBody771_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 10)

def crepBody771_11 : CrepProg (BitVec 64) :=
.seq crepBody771_10 crepBody771_2

def crepBody771_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.const 16#64,
          Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.var 10])

def crepBody771_13 : CrepProg (BitVec 64) :=
.seq crepBody771_12 crepBody771_2

def crepBody771_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 32#64) (Flapjack.CrepExp.var 2)) crepBody771_11 crepBody771_13

def crepBody771_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.const 1#64)

def crepBody771_16 : CrepProg (BitVec 64) :=
.seq crepBody771_15 crepBody771_2

def crepBody771_17 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 1#64)) crepBody771_16 crepBody771_2

def crepBody771_18 : CrepProg (BitVec 64) :=
.seq crepBody771_14 crepBody771_17

def crepBody771_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.const 500#64)

def crepBody771_20 : CrepProg (BitVec 64) :=
.seq crepBody771_19 crepBody771_2

def crepBody771_21 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 500#64)) crepBody771_20 crepBody771_2

def crepBody771_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 12]

def crepBody771_23 : CrepProg (BitVec 64) :=
.seq crepBody771_21 crepBody771_22

def crepBody771_24 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 11]) crepBody771_23

def crepBody771_25 : CrepProg (BitVec 64) :=
.seq crepBody771_18 crepBody771_24

def crepBody771_26 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody771_25

def crepBody771_27 : CrepProg (BitVec 64) :=
.seq crepBody771_9 crepBody771_26

def crepBody771_28 : CrepProg (BitVec 64) :=
.seq crepBody771_5 crepBody771_27

def crepBody771_29 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody771_28

def crepBody771_30 : CrepProg (BitVec 64) :=
.seq crepBody771_4 crepBody771_29

def crepBody771_31 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 16#64) crepBody771_30

def crepBody771_32 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 7#64])
  (Flapjack.CrepExp.const 3#64)) crepBody771_31

def crepBody771_33 : CrepProg (BitVec 64) :=
.seq crepBody771_0 crepBody771_32

def crepBody771_34 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody771_33

def data771 : CrepProg (BitVec 64) := crepBody771_34
def output771 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 111#8, 100#8, 101#8, 120#8, 112#8, 95#8, 103#8, 97#8, 115#8], [0, 1, 2, 3, 4, 5, 6], crepProgToHOL data771)
end InitECandidate.Proofs.FrontendStages.Crep
