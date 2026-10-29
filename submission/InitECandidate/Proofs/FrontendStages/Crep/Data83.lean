import InitECandidate.Proofs.FrontendStages.Crep.Translate67
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody83_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "bswap64" [Flapjack.CrepExp.var 3]

def crepBody83_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody83_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody83_3 : CrepProg (BitVec 64) :=
.seq crepBody83_1 crepBody83_2

def crepBody83_4 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 5) crepBody83_3

def crepBody83_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 4) crepBody83_4

def crepBody83_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "bswap64" [Flapjack.CrepExp.var 2]

def crepBody83_7 : CrepProg (BitVec 64) :=
.seq crepBody83_5 crepBody83_6

def crepBody83_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64]) crepBody83_4

def crepBody83_9 : CrepProg (BitVec 64) :=
.seq crepBody83_7 crepBody83_8

def crepBody83_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "bswap64" [Flapjack.CrepExp.var 1]

def crepBody83_11 : CrepProg (BitVec 64) :=
.seq crepBody83_9 crepBody83_10

def crepBody83_12 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64]) crepBody83_4

def crepBody83_13 : CrepProg (BitVec 64) :=
.seq crepBody83_11 crepBody83_12

def crepBody83_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "bswap64" [Flapjack.CrepExp.var 0]

def crepBody83_15 : CrepProg (BitVec 64) :=
.seq crepBody83_13 crepBody83_14

def crepBody83_16 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 24#64]) crepBody83_4

def crepBody83_17 : CrepProg (BitVec 64) :=
.seq crepBody83_15 crepBody83_16

def crepBody83_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody83_19 : CrepProg (BitVec 64) :=
.seq crepBody83_17 crepBody83_18

def crepBody83_20 : CrepProg (BitVec 64) :=
.seq crepBody83_0 crepBody83_19

def crepBody83_21 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody83_20

def crepBody83_22 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 7#64])
  (Flapjack.CrepExp.const 0#64)) crepBody83_21 crepBody83_2

def crepBody83_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "st_be64" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 3]

def crepBody83_24 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody83_23

def crepBody83_25 : CrepProg (BitVec 64) :=
.seq crepBody83_22 crepBody83_24

def crepBody83_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "st_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64], Flapjack.CrepExp.var 2]

def crepBody83_27 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody83_26

def crepBody83_28 : CrepProg (BitVec 64) :=
.seq crepBody83_25 crepBody83_27

def crepBody83_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "st_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64],
    Flapjack.CrepExp.var 1]

def crepBody83_30 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody83_29

def crepBody83_31 : CrepProg (BitVec 64) :=
.seq crepBody83_28 crepBody83_30

def crepBody83_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "st_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 24#64],
    Flapjack.CrepExp.var 0]

def crepBody83_33 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody83_32

def crepBody83_34 : CrepProg (BitVec 64) :=
.seq crepBody83_31 crepBody83_33

def crepBody83_35 : CrepProg (BitVec 64) :=
.seq crepBody83_34 crepBody83_18

def data83 : CrepProg (BitVec 64) := crepBody83_35
def output83 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [117#8, 50#8, 53#8, 54#8, 95#8, 116#8, 111#8, 95#8, 98#8, 101#8, 51#8, 50#8], [0, 1, 2, 3, 4], crepProgToHOL data83)
end InitECandidate.Proofs.FrontendStages.Crep
