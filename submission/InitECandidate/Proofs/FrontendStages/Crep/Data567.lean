import InitECandidate.Proofs.FrontendStages.Crep.Translate551
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody567_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody567_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody567_2 : CrepProg (BitVec 64) :=
.seq crepBody567_0 crepBody567_1

def crepBody567_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 1732584193#64) crepBody567_2

def crepBody567_4 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 336#64])) crepBody567_3

def crepBody567_5 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 4023233417#64) crepBody567_2

def crepBody567_6 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 336#64]),
    Flapjack.CrepExp.const 8#64]) crepBody567_5

def crepBody567_7 : CrepProg (BitVec 64) :=
.seq crepBody567_4 crepBody567_6

def crepBody567_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 2562383102#64) crepBody567_2

def crepBody567_9 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 336#64]),
    Flapjack.CrepExp.const 16#64]) crepBody567_8

def crepBody567_10 : CrepProg (BitVec 64) :=
.seq crepBody567_7 crepBody567_9

def crepBody567_11 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 271733878#64) crepBody567_2

def crepBody567_12 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 336#64]),
    Flapjack.CrepExp.const 24#64]) crepBody567_11

def crepBody567_13 : CrepProg (BitVec 64) :=
.seq crepBody567_10 crepBody567_12

def crepBody567_14 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 3285377520#64) crepBody567_2

def crepBody567_15 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 336#64]),
    Flapjack.CrepExp.const 32#64]) crepBody567_14

def crepBody567_16 : CrepProg (BitVec 64) :=
.seq crepBody567_13 crepBody567_15

def crepBody567_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "ripemd160_block"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 336#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]]

def crepBody567_18 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody567_17

def crepBody567_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 4)

def crepBody567_20 : CrepProg (BitVec 64) :=
.seq crepBody567_19 crepBody567_1

def crepBody567_21 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 64#64]) crepBody567_20

def crepBody567_22 : CrepProg (BitVec 64) :=
.seq crepBody567_18 crepBody567_21

def crepBody567_23 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 1)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 64#64])) crepBody567_22

def crepBody567_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memzero"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 344#64]),
    Flapjack.CrepExp.const 128#64]

def crepBody567_25 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody567_24

def crepBody567_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memcpy"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 344#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3], Flapjack.CrepExp.var 4]

def crepBody567_27 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody567_26

def crepBody567_28 : CrepProg (BitVec 64) :=
.seq crepBody567_25 crepBody567_27

def crepBody567_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 344#64]),
      Flapjack.CrepExp.var 4])
  (Flapjack.CrepExp.const 128#64)

def crepBody567_30 : CrepProg (BitVec 64) :=
.seq crepBody567_28 crepBody567_29

def crepBody567_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.const 128#64)

def crepBody567_32 : CrepProg (BitVec 64) :=
.seq crepBody567_31 crepBody567_1

def crepBody567_33 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 56#64)) crepBody567_32 crepBody567_1

def crepBody567_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "st_le64"
  [Flapjack.CrepExp.op Flapjack.BinOp.sub
      [Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.load
              (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 344#64]),
            Flapjack.CrepExp.var 5],
        Flapjack.CrepExp.const 8#64],
    Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 3#64)]

def crepBody567_35 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody567_34

def crepBody567_36 : CrepProg (BitVec 64) :=
.seq crepBody567_33 crepBody567_35

def crepBody567_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "ripemd160_block"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 336#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 344#64])]

def crepBody567_38 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody567_37

def crepBody567_39 : CrepProg (BitVec 64) :=
.seq crepBody567_36 crepBody567_38

def crepBody567_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "ripemd160_block"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 336#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 344#64]),
        Flapjack.CrepExp.const 64#64]]

def crepBody567_41 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody567_40

def crepBody567_42 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 128#64)) crepBody567_41 crepBody567_1

def crepBody567_43 : CrepProg (BitVec 64) :=
.seq crepBody567_39 crepBody567_42

def crepBody567_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.const 0#64)

def crepBody567_45 : CrepProg (BitVec 64) :=
.seq crepBody567_44 crepBody567_1

def crepBody567_46 : CrepProg (BitVec 64) :=
.seq crepBody567_43 crepBody567_45

def crepBody567_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "st_le32"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 2,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4#64]],
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 336#64]),
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]])]

def crepBody567_48 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody567_47

def crepBody567_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 6)

def crepBody567_50 : CrepProg (BitVec 64) :=
.seq crepBody567_49 crepBody567_1

def crepBody567_51 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody567_50

def crepBody567_52 : CrepProg (BitVec 64) :=
.seq crepBody567_48 crepBody567_51

def crepBody567_53 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 5#64)) crepBody567_52

def crepBody567_54 : CrepProg (BitVec 64) :=
.seq crepBody567_46 crepBody567_53

def crepBody567_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody567_56 : CrepProg (BitVec 64) :=
.seq crepBody567_54 crepBody567_55

def crepBody567_57 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 64#64) crepBody567_56

def crepBody567_58 : CrepProg (BitVec 64) :=
.seq crepBody567_30 crepBody567_57

def crepBody567_59 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3]) crepBody567_58

def crepBody567_60 : CrepProg (BitVec 64) :=
.seq crepBody567_23 crepBody567_59

def crepBody567_61 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody567_60

def crepBody567_62 : CrepProg (BitVec 64) :=
.seq crepBody567_16 crepBody567_61

def data567 : CrepProg (BitVec 64) := crepBody567_62
def output567 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 105#8, 112#8, 101#8, 109#8, 100#8, 49#8, 54#8, 48#8], [0, 1, 2], crepProgToHOL data567)
end InitECandidate.Proofs.FrontendStages.Crep
