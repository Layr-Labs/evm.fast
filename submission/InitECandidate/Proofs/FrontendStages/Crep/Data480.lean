import InitECandidate.Proofs.FrontendStages.Crep.Translate464
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody480_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "charge_gas" [Flapjack.CrepExp.const 3#64]

def crepBody480_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody480_0

def crepBody480_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "code_imm" []

def crepBody480_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 2)

def crepBody480_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody480_5 : CrepProg (BitVec 64) :=
.seq crepBody480_3 crepBody480_4

def crepBody480_6 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 10#64) crepBody480_5

def crepBody480_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody480_8 : CrepProg (BitVec 64) :=
.seq crepBody480_6 crepBody480_7

def crepBody480_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 81#64) (Flapjack.CrepExp.var 1)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 128#64))]) crepBody480_8 crepBody480_4

def crepBody480_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64])

def crepBody480_11 : CrepProg (BitVec 64) :=
.seq crepBody480_10 crepBody480_4

def crepBody480_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64])

def crepBody480_13 : CrepProg (BitVec 64) :=
.seq crepBody480_12 crepBody480_4

def crepBody480_14 : CrepProg (BitVec 64) :=
.seq crepBody480_11 crepBody480_13

def crepBody480_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64])

def crepBody480_16 : CrepProg (BitVec 64) :=
.seq crepBody480_15 crepBody480_4

def crepBody480_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6
  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 29#64, Flapjack.CrepExp.var 3])

def crepBody480_18 : CrepProg (BitVec 64) :=
.seq crepBody480_17 crepBody480_4

def crepBody480_19 : CrepProg (BitVec 64) :=
.seq crepBody480_16 crepBody480_18

def crepBody480_20 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)) crepBody480_14 crepBody480_19

def crepBody480_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "max" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody480_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 8)

def crepBody480_23 : CrepProg (BitVec 64) :=
.seq crepBody480_22 crepBody480_4

def crepBody480_24 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 2#64) crepBody480_23

def crepBody480_25 : CrepProg (BitVec 64) :=
.seq crepBody480_24 crepBody480_7

def crepBody480_26 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
        Flapjack.CrepExp.const 16#64]))
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64])) crepBody480_25 crepBody480_4

def crepBody480_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "stack_swap_positions" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody480_28 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody480_27

def crepBody480_29 : CrepProg (BitVec 64) :=
.seq crepBody480_26 crepBody480_28

def crepBody480_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "pc_add" [Flapjack.CrepExp.const 2#64]

def crepBody480_31 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody480_30

def crepBody480_32 : CrepProg (BitVec 64) :=
.seq crepBody480_29 crepBody480_31

def crepBody480_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody480_34 : CrepProg (BitVec 64) :=
.seq crepBody480_32 crepBody480_33

def crepBody480_35 : CrepProg (BitVec 64) :=
.seq crepBody480_21 crepBody480_34

def crepBody480_36 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody480_35

def crepBody480_37 : CrepProg (BitVec 64) :=
.seq crepBody480_20 crepBody480_36

def crepBody480_38 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody480_37

def crepBody480_39 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody480_38

def crepBody480_40 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 15#64]) crepBody480_39

def crepBody480_41 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 4#64)) crepBody480_40

def crepBody480_42 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 143#64]) crepBody480_41

def crepBody480_43 : CrepProg (BitVec 64) :=
.seq crepBody480_9 crepBody480_42

def crepBody480_44 : CrepProg (BitVec 64) :=
.seq crepBody480_2 crepBody480_43

def crepBody480_45 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody480_44

def crepBody480_46 : CrepProg (BitVec 64) :=
.seq crepBody480_1 crepBody480_45

def data480 : CrepProg (BitVec 64) := crepBody480_46
def output480 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 101#8, 120#8, 99#8, 104#8, 97#8, 110#8, 103#8, 101#8], [], crepProgToHOL data480)
end InitECandidate.Proofs.FrontendStages.Crep
