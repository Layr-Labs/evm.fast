import InitECandidate.Proofs.FrontendStages.Crep.Translate462
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody478_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "charge_gas" [Flapjack.CrepExp.const 3#64]

def crepBody478_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody478_0

def crepBody478_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "code_imm" []

def crepBody478_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "decode_single" [Flapjack.CrepExp.var 1]

def crepBody478_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 3)

def crepBody478_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody478_6 : CrepProg (BitVec 64) :=
.seq crepBody478_4 crepBody478_5

def crepBody478_7 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 2#64) crepBody478_6

def crepBody478_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody478_9 : CrepProg (BitVec 64) :=
.seq crepBody478_7 crepBody478_8

def crepBody478_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
        Flapjack.CrepExp.const 16#64]))
  (Flapjack.CrepExp.var 2)) crepBody478_9 crepBody478_5

def crepBody478_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "stack_push"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody478_12 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody478_11

def crepBody478_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "pc_add" [Flapjack.CrepExp.const 2#64]

def crepBody478_14 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody478_13

def crepBody478_15 : CrepProg (BitVec 64) :=
.seq crepBody478_12 crepBody478_14

def crepBody478_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody478_17 : CrepProg (BitVec 64) :=
.seq crepBody478_15 crepBody478_16

def crepBody478_18 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.load
                  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
                Flapjack.CrepExp.const 8#64]),
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 2],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody478_17

def crepBody478_19 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.load
                  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
                Flapjack.CrepExp.const 8#64]),
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 2],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody478_18

def crepBody478_20 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.load
                  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
                Flapjack.CrepExp.const 8#64]),
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 2],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody478_19

def crepBody478_21 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.load
              (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
            Flapjack.CrepExp.const 8#64]),
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 2],
          Flapjack.CrepExp.const 32#64]])) crepBody478_20

def crepBody478_22 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 16#64])) crepBody478_21

def crepBody478_23 : CrepProg (BitVec 64) :=
.seq crepBody478_10 crepBody478_22

def crepBody478_24 : CrepProg (BitVec 64) :=
.seq crepBody478_3 crepBody478_23

def crepBody478_25 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody478_24

def crepBody478_26 : CrepProg (BitVec 64) :=
.seq crepBody478_2 crepBody478_25

def crepBody478_27 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody478_26

def crepBody478_28 : CrepProg (BitVec 64) :=
.seq crepBody478_1 crepBody478_27

def data478 : CrepProg (BitVec 64) := crepBody478_28
def output478 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 100#8, 117#8, 112#8, 110#8], [], crepProgToHOL data478)
end InitECandidate.Proofs.FrontendStages.Crep
