import InitECandidate.Proofs.FrontendStages.Crep.Translate463
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody479_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "charge_gas" [Flapjack.CrepExp.const 3#64]

def crepBody479_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody479_0

def crepBody479_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "code_imm" []

def crepBody479_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "decode_single" [Flapjack.CrepExp.var 1]

def crepBody479_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 3)

def crepBody479_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody479_6 : CrepProg (BitVec 64) :=
.seq crepBody479_4 crepBody479_5

def crepBody479_7 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 2#64) crepBody479_6

def crepBody479_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody479_9 : CrepProg (BitVec 64) :=
.seq crepBody479_7 crepBody479_8

def crepBody479_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
        Flapjack.CrepExp.const 16#64]))
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64])) crepBody479_9 crepBody479_5

def crepBody479_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "stack_swap_positions" [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.var 2]

def crepBody479_12 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody479_11

def crepBody479_13 : CrepProg (BitVec 64) :=
.seq crepBody479_10 crepBody479_12

def crepBody479_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "pc_add" [Flapjack.CrepExp.const 2#64]

def crepBody479_15 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody479_14

def crepBody479_16 : CrepProg (BitVec 64) :=
.seq crepBody479_13 crepBody479_15

def crepBody479_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody479_18 : CrepProg (BitVec 64) :=
.seq crepBody479_16 crepBody479_17

def crepBody479_19 : CrepProg (BitVec 64) :=
.seq crepBody479_3 crepBody479_18

def crepBody479_20 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody479_19

def crepBody479_21 : CrepProg (BitVec 64) :=
.seq crepBody479_2 crepBody479_20

def crepBody479_22 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody479_21

def crepBody479_23 : CrepProg (BitVec 64) :=
.seq crepBody479_1 crepBody479_22

def data479 : CrepProg (BitVec 64) := crepBody479_23
def output479 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 119#8, 97#8, 112#8, 110#8], [], crepProgToHOL data479)
end InitECandidate.Proofs.FrontendStages.Crep
