import InitECandidate.Proofs.FrontendStages.Crep.Translate66
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody82_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "bswap64" [Flapjack.CrepExp.var 2]

def crepBody82_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]))

def crepBody82_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody82_3 : CrepProg (BitVec 64) :=
.seq crepBody82_1 crepBody82_2

def crepBody82_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "bswap64" [Flapjack.CrepExp.var 2]

def crepBody82_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64]))

def crepBody82_6 : CrepProg (BitVec 64) :=
.seq crepBody82_5 crepBody82_2

def crepBody82_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "bswap64" [Flapjack.CrepExp.var 2]

def crepBody82_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]))

def crepBody82_9 : CrepProg (BitVec 64) :=
.seq crepBody82_8 crepBody82_2

def crepBody82_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "bswap64" [Flapjack.CrepExp.var 2]

def crepBody82_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 3]

def crepBody82_12 : CrepProg (BitVec 64) :=
.seq crepBody82_10 crepBody82_11

def crepBody82_13 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody82_12

def crepBody82_14 : CrepProg (BitVec 64) :=
.seq crepBody82_9 crepBody82_13

def crepBody82_15 : CrepProg (BitVec 64) :=
.seq crepBody82_7 crepBody82_14

def crepBody82_16 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody82_15

def crepBody82_17 : CrepProg (BitVec 64) :=
.seq crepBody82_6 crepBody82_16

def crepBody82_18 : CrepProg (BitVec 64) :=
.seq crepBody82_4 crepBody82_17

def crepBody82_19 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody82_18

def crepBody82_20 : CrepProg (BitVec 64) :=
.seq crepBody82_3 crepBody82_19

def crepBody82_21 : CrepProg (BitVec 64) :=
.seq crepBody82_0 crepBody82_20

def crepBody82_22 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody82_21

def crepBody82_23 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 0)) crepBody82_22

def crepBody82_24 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 32#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
        (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 7#64])
        (Flapjack.CrepExp.const 0#64))]) crepBody82_23 crepBody82_2

def crepBody82_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 10)

def crepBody82_26 : CrepProg (BitVec 64) :=
.seq crepBody82_25 crepBody82_2

def crepBody82_27 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 8]) crepBody82_26

def crepBody82_28 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 0#64)) crepBody82_27 crepBody82_2

def crepBody82_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 10)

def crepBody82_30 : CrepProg (BitVec 64) :=
.seq crepBody82_29 crepBody82_2

def crepBody82_31 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 8]) crepBody82_30

def crepBody82_32 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 1#64)) crepBody82_31 crepBody82_2

def crepBody82_33 : CrepProg (BitVec 64) :=
.seq crepBody82_28 crepBody82_32

def crepBody82_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 10)

def crepBody82_35 : CrepProg (BitVec 64) :=
.seq crepBody82_34 crepBody82_2

def crepBody82_36 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 8]) crepBody82_35

def crepBody82_37 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 2#64)) crepBody82_36 crepBody82_2

def crepBody82_38 : CrepProg (BitVec 64) :=
.seq crepBody82_33 crepBody82_37

def crepBody82_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 10)

def crepBody82_40 : CrepProg (BitVec 64) :=
.seq crepBody82_39 crepBody82_2

def crepBody82_41 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 8]) crepBody82_40

def crepBody82_42 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 3#64)) crepBody82_41 crepBody82_2

def crepBody82_43 : CrepProg (BitVec 64) :=
.seq crepBody82_38 crepBody82_42

def crepBody82_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 10)

def crepBody82_45 : CrepProg (BitVec 64) :=
.seq crepBody82_44 crepBody82_2

def crepBody82_46 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]) crepBody82_45

def crepBody82_47 : CrepProg (BitVec 64) :=
.seq crepBody82_43 crepBody82_46

def crepBody82_48 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 3#64)) crepBody82_47

def crepBody82_49 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.shift Flapjack.Shift.lsl
  (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 6]))
  (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
    [Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 7#64],
      Flapjack.CrepExp.const 8#64])) crepBody82_48

def crepBody82_50 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64], Flapjack.CrepExp.var 6]) crepBody82_49

def crepBody82_51 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 1)) crepBody82_50

def crepBody82_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody82_53 : CrepProg (BitVec 64) :=
.seq crepBody82_51 crepBody82_52

def crepBody82_54 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody82_53

def crepBody82_55 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody82_54

def crepBody82_56 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody82_55

def crepBody82_57 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody82_56

def crepBody82_58 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody82_57

def crepBody82_59 : CrepProg (BitVec 64) :=
.seq crepBody82_24 crepBody82_58

def data82 : CrepProg (BitVec 64) := crepBody82_59
def output82 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [117#8, 50#8, 53#8, 54#8, 95#8, 102#8, 114#8, 111#8, 109#8, 95#8, 98#8, 101#8], [0, 1], crepProgToHOL data82)
end InitECandidate.Proofs.FrontendStages.Crep
