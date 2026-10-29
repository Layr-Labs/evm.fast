import InitECandidate.Proofs.FrontendStages.Crep.Translate208
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody224_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 2,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 3]])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 4#64))

def crepBody224_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 2,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 3],
      Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 15#64])

def crepBody224_2 : CrepProg (BitVec 64) :=
.seq crepBody224_0 crepBody224_1

def crepBody224_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 2,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 3],
      Flapjack.CrepExp.const 2#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 4#64))

def crepBody224_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 2,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 3],
      Flapjack.CrepExp.const 3#64])
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 15#64])

def crepBody224_5 : CrepProg (BitVec 64) :=
.seq crepBody224_3 crepBody224_4

def crepBody224_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 2,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 3],
      Flapjack.CrepExp.const 4#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 4#64))

def crepBody224_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 2,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 3],
      Flapjack.CrepExp.const 5#64])
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 15#64])

def crepBody224_8 : CrepProg (BitVec 64) :=
.seq crepBody224_6 crepBody224_7

def crepBody224_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 2,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 3],
      Flapjack.CrepExp.const 6#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 4#64))

def crepBody224_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 2,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 3],
      Flapjack.CrepExp.const 7#64])
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 15#64])

def crepBody224_11 : CrepProg (BitVec 64) :=
.seq crepBody224_9 crepBody224_10

def crepBody224_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 8)

def crepBody224_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody224_14 : CrepProg (BitVec 64) :=
.seq crepBody224_12 crepBody224_13

def crepBody224_15 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4#64]) crepBody224_14

def crepBody224_16 : CrepProg (BitVec 64) :=
.seq crepBody224_11 crepBody224_15

def crepBody224_17 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.loadByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 3#64])) crepBody224_16

def crepBody224_18 : CrepProg (BitVec 64) :=
.seq crepBody224_8 crepBody224_17

def crepBody224_19 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.loadByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 2#64])) crepBody224_18

def crepBody224_20 : CrepProg (BitVec 64) :=
.seq crepBody224_5 crepBody224_19

def crepBody224_21 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.loadByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64])) crepBody224_20

def crepBody224_22 : CrepProg (BitVec 64) :=
.seq crepBody224_2 crepBody224_21

def crepBody224_23 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3])) crepBody224_22

def crepBody224_24 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 1)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4#64])) crepBody224_23

def crepBody224_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 5)

def crepBody224_26 : CrepProg (BitVec 64) :=
.seq crepBody224_25 crepBody224_13

def crepBody224_27 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody224_26

def crepBody224_28 : CrepProg (BitVec 64) :=
.seq crepBody224_2 crepBody224_27

def crepBody224_29 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3])) crepBody224_28

def crepBody224_30 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 1)) crepBody224_29

def crepBody224_31 : CrepProg (BitVec 64) :=
.seq crepBody224_24 crepBody224_30

def crepBody224_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody224_33 : CrepProg (BitVec 64) :=
.seq crepBody224_31 crepBody224_32

def crepBody224_34 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody224_33

def data224 : CrepProg (BitVec 64) := crepBody224_34
def output224 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [107#8, 101#8, 121#8, 95#8, 116#8, 111#8, 95#8, 110#8, 105#8, 98#8, 98#8, 108#8, 101#8, 115#8], [0, 1, 2], crepProgToHOL data224)
end InitECandidate.Proofs.FrontendStages.Crep
