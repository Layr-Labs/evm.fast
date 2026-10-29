import InitECandidate.Proofs.FrontendStages.Crep.Translate553
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody569_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 14)

def crepBody569_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody569_2 : CrepProg (BitVec 64) :=
.seq crepBody569_0 crepBody569_1

def crepBody569_3 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 4]) crepBody569_2

def crepBody569_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 13 (Flapjack.CrepExp.var 14)

def crepBody569_5 : CrepProg (BitVec 64) :=
.seq crepBody569_4 crepBody569_1

def crepBody569_6 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.shift Flapjack.Shift.ror
  (Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 10])
  (Flapjack.CrepExp.const 32#64)) crepBody569_5

def crepBody569_7 : CrepProg (BitVec 64) :=
.seq crepBody569_3 crepBody569_6

def crepBody569_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.var 14)

def crepBody569_9 : CrepProg (BitVec 64) :=
.seq crepBody569_8 crepBody569_1

def crepBody569_10 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]) crepBody569_9

def crepBody569_11 : CrepProg (BitVec 64) :=
.seq crepBody569_7 crepBody569_10

def crepBody569_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 14)

def crepBody569_13 : CrepProg (BitVec 64) :=
.seq crepBody569_12 crepBody569_1

def crepBody569_14 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.shift Flapjack.Shift.ror
  (Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12])
  (Flapjack.CrepExp.const 24#64)) crepBody569_13

def crepBody569_15 : CrepProg (BitVec 64) :=
.seq crepBody569_11 crepBody569_14

def crepBody569_16 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 5]) crepBody569_2

def crepBody569_17 : CrepProg (BitVec 64) :=
.seq crepBody569_15 crepBody569_16

def crepBody569_18 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.shift Flapjack.Shift.ror
  (Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 10])
  (Flapjack.CrepExp.const 16#64)) crepBody569_5

def crepBody569_19 : CrepProg (BitVec 64) :=
.seq crepBody569_17 crepBody569_18

def crepBody569_20 : CrepProg (BitVec 64) :=
.seq crepBody569_19 crepBody569_10

def crepBody569_21 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.shift Flapjack.Shift.ror
  (Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12])
  (Flapjack.CrepExp.const 63#64)) crepBody569_13

def crepBody569_22 : CrepProg (BitVec 64) :=
.seq crepBody569_20 crepBody569_21

def crepBody569_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.var 15)

def crepBody569_24 : CrepProg (BitVec 64) :=
.seq crepBody569_23 crepBody569_1

def crepBody569_25 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 10) crepBody569_24

def crepBody569_26 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 6) crepBody569_25

def crepBody569_27 : CrepProg (BitVec 64) :=
.seq crepBody569_22 crepBody569_26

def crepBody569_28 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 11) crepBody569_24

def crepBody569_29 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 7) crepBody569_28

def crepBody569_30 : CrepProg (BitVec 64) :=
.seq crepBody569_27 crepBody569_29

def crepBody569_31 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 12) crepBody569_24

def crepBody569_32 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 8) crepBody569_31

def crepBody569_33 : CrepProg (BitVec 64) :=
.seq crepBody569_30 crepBody569_32

def crepBody569_34 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 13) crepBody569_24

def crepBody569_35 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 9) crepBody569_34

def crepBody569_36 : CrepProg (BitVec 64) :=
.seq crepBody569_33 crepBody569_35

def crepBody569_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody569_38 : CrepProg (BitVec 64) :=
.seq crepBody569_36 crepBody569_37

def crepBody569_39 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 9)) crepBody569_38

def crepBody569_40 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 8)) crepBody569_39

def crepBody569_41 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 7)) crepBody569_40

def crepBody569_42 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 6)) crepBody569_41

def crepBody569_43 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 368#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]]) crepBody569_42

def crepBody569_44 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 368#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64]]) crepBody569_43

def crepBody569_45 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 368#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64]]) crepBody569_44

def crepBody569_46 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 368#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]]) crepBody569_45

def data569 : CrepProg (BitVec 64) := crepBody569_46
def output569 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 97#8, 107#8, 101#8, 50#8, 95#8, 103#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data569)
end InitECandidate.Proofs.FrontendStages.Crep
